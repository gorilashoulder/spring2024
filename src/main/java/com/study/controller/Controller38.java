package com.study.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Controller38 {
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/path1")
    @PreAuthorize("isAuthenticated()")
    public void path1() {
        System.out.println("Controller38.path1");
    }

    @GetMapping("/path2")
    @PreAuthorize("hasAnyAuthority('user')")
    public void path2() {
        System.out.println("유저권한이면 실행가능");
    }

    @GetMapping("/path3")
    @PreAuthorize("hasAnyAuthority('admin')")
    public void path3() {
        System.out.println("어드민권한이면 실행가능");
    }

    @GetMapping("/path4")
    public void path4() {
    }
}
