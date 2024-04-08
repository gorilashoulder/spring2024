package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main8")
public class Controller08 {
    @RequestMapping("sub1")
    public void method1(Model model) {
        model.addAttribute("name1", "value1");
        model.addAttribute("name2", "value2");
    }

    @RequestMapping("sub2")
    public void method2(Model model) {
        model.addAttribute("city", "서울");
        model.addAttribute("address", "신촌");
    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        model.addAttribute("name", "벨링엄");
        model.addAttribute("age", 33);
    }

    @RequestMapping("sub4")
    public void method4(Model model) {
        //model attribute의 name: String
        //model attribute의 value: Object

        //따라서 model attribute의 value는 무엇이든 될 수 있다.
        //자주 사용하는 타입
        //String ,기본 타입(Wrapper)
        //배열, List, Map
        //JavaBeans

        //배열
        model.addAttribute("car", new String[]{"tesla", "kia", "hyundai"});
    }

    @RequestMapping("sub5")
    public void method5(Model model) {
        model.addAttribute("cities", new String[]{"서울", "대구", "부산"});
        model.addAttribute("countries", new String[]{"한국", "미국", "케냐"});
    }

    @RequestMapping("sub6")
    public void method6(Model model) {
        List<String> data = List.of("java", "css", "html", "jsp");
        model.addAttribute("myList", data);
    }

    @RequestMapping("sub7")
    public void method7(Model model) {
        List<String> data = List.of("🤖", "🦍", "🦛", "🤡");
        model.addAttribute("myList", data);

        List<Integer> numbers = List.of(10, 5, 0);
        model.addAttribute("yourList", numbers);
    }

    @RequestMapping("sub8")
    public void method8(Model model) {
        List<Double> numbers = List.of(500.0, 3.14);
        model.addAttribute("numbers", numbers);

        List<String> data = List.of("서울", "런던", "뉴욕");
        model.addAttribute("cities", data);
    }

    @RequestMapping("sub9")
    public void method9(Model model) {
        //model attribute의 값이 map일 때
        Map<String, String> map = new HashMap<>();
        map.put("name", "벨링엄");
        map.put("age", "20대");
        map.put("address", "에버튼");

        model.addAttribute("myMap", map);
    }

    @RequestMapping("sub10")
    public void method10(Model model) {
        Map<String, String> names = Map.of("Otani", "LA다저스", "Bellingham", "레알", "Lebron", "레이커스");
        model.addAttribute("names", names);
        
    }
}
