package craig.webfluxredis;

import org.junit.jupiter.api.RepeatedTest;
import org.redisson.api.RAtomicLongReactive;
import org.redisson.api.RedissonReactiveClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.ReactiveStringRedisTemplate;
import org.springframework.data.redis.core.ReactiveValueOperations;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import reactor.test.StepVerifier;

@SpringBootTest
class WebfluxRedisApplicationTests {

    @Autowired
    private ReactiveStringRedisTemplate reactiveStringRedisTemplate;

    @Autowired
    private RedissonReactiveClient redissonClient;

    @RepeatedTest(3)
    void springDataRedisTest() {
        ReactiveValueOperations<String, String> ops = reactiveStringRedisTemplate.opsForValue();
        long start = System.currentTimeMillis();
        Mono<Void> mono = Flux.range(1, 500_000)
                .map(i -> "key" + i)
                .flatMap(s -> ops.increment("user:1:count"))
                .then();
        StepVerifier.create(mono)
                .verifyComplete();
        long end = System.currentTimeMillis();
        System.out.println("time taken: " + (end - start));


    }

    @RepeatedTest(3)
    void redissonTest(){
        RAtomicLongReactive atomicLongReactive = this.redissonClient.getAtomicLong("user:2:count");
        long start = System.currentTimeMillis();
        Mono<Void> mono = Flux.range(1, 500_000)
                .map(i -> "key" + i)
                .flatMap(s -> atomicLongReactive.incrementAndGet())
                .then();
        StepVerifier.create(mono)
                .verifyComplete();
        long end = System.currentTimeMillis();
        System.out.println("time taken: " + (end - start));
    }

}
