package com.study.controller;

import com.study.domain.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main14")
public class Controller14 {
    @RequestMapping("sub1")
    public void method1(Model model) {
        MyBean141 o1 = new MyBean141("신촌", "한국", 30, "흥민");
        MyBean142 o2 = new MyBean142();
        o2.setName("강인");
        o2.setId("19");
        o2.setAge(22);
        model.addAttribute("player1", o1);
        model.addAttribute("o2", o2);

    }

    @RequestMapping("sub2")
    public void method2(Model model) {
        MyBean142 o1 = new MyBean142();
        o1.setName("김민재");
        MyBean142 o2 = new MyBean142();
        o2.setName("이정후");
        //attribute 명은 클래스명을 lowerCamalCase이름으로 결정
        //myBean142
        model.addAttribute(o1);
        model.addAttribute(List.of(o1, o2)); //myBean142List

    }

    @RequestMapping("sub3")
    public void method3(@ModelAttribute("player1") MyBean141 o1) {
        o1.setName("오타니");
    }

    @RequestMapping("sub4")
    public String method4(@ModelAttribute MyBean142 o1) {
        o1.setName("김민재");

        return "/main14/sub3";
    }

    @RequestMapping("sub5")
    public String method5(MyBean142 o1) {
        o1.setName("유재석");
        return "/main14/sub3";
    }

    @RequestMapping("sub6")
    public void method6(MyBean142 o1) {
        o1.setName("카리나");
    }

    @RequestMapping("sub7")
    public String method7(MyBean143 o1) {
        o1.setAddress("신촌");
        return "/main14/sub6";
    }

    // /main14/sub8?city=london&address=ny
    @RequestMapping("sub8")
    public void method8(MyBean144 o1) {
        System.out.println("o1 = " + o1);
    }

    @RequestMapping("sub9")
    public void method9(String name, Integer age, String address, Model model) {
        MyBean145 o1 = new MyBean145();
        o1.setName(name);
        o1.setAddress(address);
        o1.setAge(age);

        model.addAttribute("myBean145", o1);
    }

    @RequestMapping("sub10")
    public String method10(MyBean145 o1) {
        return "/main14/sub9";
    }

    @RequestMapping("sub11")
    public void method11(MyBean146 o1) {
        System.out.println("o1 = " + o1);
    }

    @RequestMapping("sub12")
    public void method12(String car,
                         Integer price, //@RequestParam 생략
                         MyBean147 o1, //@ModelAttribute 생략
                         MyBean142 o2) {
        System.out.println("car = " + car);
        System.out.println("price = " + price);
        System.out.println("o1 = " + o1);
        System.out.println("o2 = " + o2);
    }
}
