package craig.webfluxredis.fibonacci.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class FibService {

    public int getFib(int n) {
        log.info("getFib(" + n + ")");
        return this.fib(n);
    }

    //intentional 2^N
    private int fib(int n) {
        if (n <2) {
            return n;
        }
        return fib(n - 1) + fib(n - 2);
    }

}
