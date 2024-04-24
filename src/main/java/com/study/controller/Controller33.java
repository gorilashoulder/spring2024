package com.study.controller;

import com.study.domain.MyBean331;
import com.study.domain.MyBean332;
import com.study.domain.MyBean333;
import com.study.mapper.Mapper04;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("main33")
@RequiredArgsConstructor
public class Controller33 {
    private final Mapper04 mapper;

    @GetMapping("sub1")
    public void method1() {
        List<MyBean331> obj = mapper.select1();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub2")
    public void method2() {
        List<MyBean332> obj = mapper.select2();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub3")
    public void method3() {
        List<MyBean333> obj = mapper.select3();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub4")
    public void method4() {
        mapper.insert1("hello world", "54321", "856.43", "2024-01-01", "2021-01-31 10:30:20");
    }

    @GetMapping("sub5")
    public void method5() {
        String strVal = "hello mybatis";
        Integer intVal = 2929;
        Double doubleVal = 3.14;
        LocalDate dateVal = LocalDate.parse("2021-01-01");
        LocalDateTime dateTimeVal = LocalDateTime.parse("2021-01-31T10:30:20");
        mapper.insert2(strVal, intVal, doubleVal, dateVal, dateTimeVal);
    }

    @GetMapping("sub6")
    public void method6() {
        mapper.insert3("리액트", "이지슬퍼블리싱", "22", "2132.22", "1990-10-31", "1990-10-31 10:30:20");
    }

    @GetMapping("sub7")
    public void method7() {
        MyBean332 obj = new MyBean332();
        obj.setStringCol("hello");
        obj.setIntCol(2929);
        obj.setDateCol(LocalDate.parse("2021-01-01"));
        obj.setDateTimeCol(LocalDateTime.parse("2021-01-31T10:30:20"));
        obj.setDecCol(10.22);

        mapper.insert4(obj);
    }

    @GetMapping("sub8")
    public void method8() {
        MyBean333 obj = new MyBean333();
        obj.setTitle("발롱도르");
        obj.setName("벨링엄");
        obj.setPrice(100000.0);
        obj.setAge(22);
        obj.setPublished(LocalDate.parse("2021-01-01"));
        obj.setInserted(LocalDateTime.parse("2021-01-31T10:30:20"));

        mapper.insert5(obj);
    }

    @GetMapping("sub9")
    public void method9(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
    }

    @PostMapping("sub9")
    public String insert9(String str, String intValue, String realValue, String dateValue, String dateTimeValue) {
        mapper.insert1(str, intValue, realValue, dateValue, dateTimeValue);
        return "redirect:/main33/sub9";
    }

    @GetMapping("sub10")
    public String method10(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
        return "main33/sub9";
    }

    @PostMapping("sub10")
    public String insert10(String str, Integer intValue, Double realValue, LocalDate dateValue, LocalDateTime dateTimeValue) {
        mapper.insert2(str, intValue, realValue, dateValue, dateTimeValue);
        return "redirect:/main33/sub10";
    }

    @GetMapping("sub11")
    public String select11(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
        return "main33/sub11";
    }

    @PostMapping("sub11")
    public String insert11(MyBean332 data) {
        System.out.println("data = " + data);
        mapper.insert4(data);
        return "redirect:/main33/sub11";
    }

    @GetMapping("sub12")
    public void select12(Model model) {
        List<MyBean333> list = mapper.select3();
        model.addAttribute("datas", list);
    }

    @PostMapping("sub12")
    public String insert12(MyBean333 data) {
        mapper.insert5(data);
        return "redirect:/main33/sub12";
    }
}
