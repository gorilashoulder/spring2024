package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;

@Controller
@RequestMapping("main6")
public class Controller06 {

    @RequestMapping("sub1")
    public void method1() {
        System.out.println("Controller06.method1");
    }

    //false=parameter 필수X
    //true=기본
    @RequestMapping("sub2")
    public void method2(@RequestParam(value = "abc", required = false) String param1,
                        @RequestParam(value = "qwe", required = false) Integer param2) {
        System.out.println("Controller06.method2");
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
    }

    @RequestMapping("sub3")
    public void method3(@RequestParam(value = "name", required = false) String param1,
                        @RequestParam(value = "age", required = false) Integer param2) {
        System.out.println("Controller06.method3");
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
    }

    // /main6/sub4?name=손흥민&age=33
    // /main6/sub4?name=이강인 X <-age 없음, required 넣어야함
    @RequestMapping("sub4")
    public void method4(@RequestParam(required = false) String name,
                        @RequestParam(required = false) Integer age) {
        System.out.println("Controller06.method4");
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }

    @RequestMapping("sub5")
    public void method5(@RequestParam(required = false) String address,
                        @RequestParam(required = false) String city) {
        System.out.println("Controller06.method5");
        System.out.println("address = " + address);
        System.out.println("city = " + city);
    }

    // /main6/sub6?address=강남&city=서울
    // /main6/sub6?address=신촌
    // /main6/sub6?city=busan
    //
    @RequestMapping("sub6")
    public void method6(String address, //required 는 false
                        String city) {
        System.out.println("Controller06.method6");
        System.out.println("address = " + address);
        System.out.println("city = " + city);
    }

    // method 아규먼트(파라미터)타입이 기본타입(wrapper) ,String 의 배열 이면
    // @RequestParam 으로 간주됨
    @RequestMapping("sub7")
    public void method7(String name, Integer age) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }

    // /main6/sub8?name=흥민&address=런던&address=서울
    @RequestMapping("sub8")
    public void method8(String name, String[] address) {
        System.out.println("name = " + name);
        System.out.println("address = " + Arrays.toString(address));
    }

    // /main6/sub9?age=44&age=55
    @RequestMapping("sub9")
    public void method9(String[] name, Integer[] age) {
        System.out.println("name = " + Arrays.toString(name));
        System.out.println("age = " + Arrays.toString(age));
    }
}
