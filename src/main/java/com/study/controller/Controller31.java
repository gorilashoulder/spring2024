package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256;
import com.study.domain.MyBean258Employee;
import com.study.mapper.Mapper02;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("main31")
public class Controller31 {

    private final Mapper02 mapper;
    private final DataSourceTransactionManagerAutoConfiguration dataSourceTransactionManagerAutoConfiguration;

    @GetMapping("sub1")
    public void sub1() {
        String now = mapper.selectNow();
        System.out.println("now = " + now);
    }

    @GetMapping("sub2")
    public String method2(Integer id) {
        MyBean254Customer customer = mapper.selectOneCustomer();
        System.out.println("customer = " + customer);
        return null;
    }

    @GetMapping("sub3")
    public void method3() {
        MyBean254Customer customer = mapper.selectOneCustomer2();
        System.out.println("customer = " + customer);
    }

    @GetMapping("sub4")
    public void method4() {
        MyBean254Customer customer = mapper.selectOneCustomer3();
        System.out.println("customer = " + customer);
    }

    @GetMapping("sub5")
    public void method5() {
        MyBean258Employee e = mapper.selectOneEmployee1();
        System.out.println("e = " + e);
    }

    @GetMapping("sub6")
    public void method6() {
        MyBean258Employee e = mapper.selectOneEmployee2(10);
        System.out.println("e = " + e);

    }

    @GetMapping("sub7")
    public void method7(Integer id) {
        MyBean258Employee e = mapper.selectOneEmployee2(id);
        System.out.println("e = " + e);
    }

    @GetMapping("sub8")
    public void method8(Integer id) {
        MyBean254Customer c = mapper.selectOneEmployee4(id);
        System.out.println("c = " + c);
    }

    @GetMapping("sub9")
    public void method9() {
        List<MyBean254Customer> customers = mapper.selectAllCustomer1();
        System.out.println("customers.size() = " + customers.size());
    }

    @GetMapping("sub10")
    public void method10() {
        List<MyBean258Employee> employees = mapper.selectAllEmployee1();
        System.out.println("employees = " + employees);

    }

    @GetMapping("sub11")
    public void method11() {
        List<MyBean254Customer> list = mapper.selectCustomersByCountry("usa", "uk");
        list.forEach(System.out::println);
    }

    @GetMapping("sub12")
    public void method12(Double min, Double max) {
        List<MyBean256> price = mapper.setProductPrice(min, max);
        price.forEach(System.out::println);
    }
}
