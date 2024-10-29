package com.course.hsa.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class HelloController {

    @GetMapping(path = "/greeting")
    public String getGreeting() {
        return "Greetings from CI/CD app!!";
    }

}
