package com.study.controller;

import com.study.mapper.Mapper05;
import com.study.service.Service01;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main34")
@RequiredArgsConstructor
public class Controller34 {
    private final Service01 service;
    //private final Mapper05 mapper;

    //해당월의 직원별 매출액 조회
    // /main34/sub1?year=1997&month=7
    @GetMapping("sub1")
    public void method1(Integer year, Integer month, Model model) {


        List<Mapper05.EmployeeIncome> value = service.employeeIncomesList(year, month);
        value.forEach(System.out::println);
        model.addAttribute("incomeList", value);
        model.addAttribute("year", year);
        model.addAttribute("month", month);
    }

    //해당월의 고객별 구매금액 조회
    //service01 , mapper05에 메소드만 추가
    //필요하면 dto(javabean)도 작성
    @GetMapping("sub2")
    public void method2(Integer year, Integer month, Model model) {
        List<Mapper05.CustomerIncome> value = service.customerIncomesList(year, month);
        value.forEach(System.out::println);
        model.addAttribute("incomeList", value);
        model.addAttribute("year", year);
        model.addAttribute("month", month);
    }
}
