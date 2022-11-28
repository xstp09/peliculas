package craig.webfluxredis.fibonacci.controller;

import craig.webfluxredis.fibonacci.service.FibService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/fib")
public class FibController {

    private final FibService fibService;


    @Autowired
    public FibController(FibService fibService) {
        this.fibService = fibService;
    }

    @GetMapping("{index}")
    public Mono<Integer> getFib(@PathVariable int index) {

        return Mono.fromSupplier(() -> fibService.getFib(index));

    }
}
