package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("main22")
public class Controller22 {
    @GetMapping("sub1")
    public String sub1() {
//        view forward
        return "/main21/sub1";
    }

    @GetMapping("sub2")
    public String sub2() {
//        redirect:접두어를 붙이면
//        redirection 응답일어남(302)
        //브라우저는 302응답을 받으면
        //location 헤더에 있는 값을
        //다시 요청을 보냄

        return "redirect:/main22/sub2";
    }

    @GetMapping("sub3")
    public void sub3() {
        //login form 있는 jsp (view)로 포워드
    }

    @PostMapping("sub4")
    public String sub4(String id, String password, RedirectAttributes redirectAttributes) {
        boolean ok = id.equals(password);

        if (ok) {
            //로그인 성공시
            //성공 후 보여주는 페이지로 이동
            redirectAttributes.addAttribute("type", "login");
            return "redirect:/main22/sub5";
        } else {
            //로그인 실패시
            //로그인 form 있는 페이지로 이동
            redirectAttributes.addAttribute("type", "fail");
            return "redirect:/main22/sub3";
        }
    }

    @GetMapping("sub5")
    public void sub5() {
    }

    @GetMapping("sub6")
    public void sub6() {

    }

    @PostMapping("sub7")
    public String sub7(String id, String password, RedirectAttributes rttr) {
        boolean ok = id.equals(password);
        if (ok) {
            rttr.addAttribute("type", "login");
            return "redirect:/main22/sub8";
        } else {
            rttr.addAttribute("type", "fail");
            return "redirect:/main22/sub6";
        }
    }

    @GetMapping("sub8")
    public void sub8() {

    }

    @GetMapping("sub9")
    public String sub9(RedirectAttributes rttr) {
        String condition = "";
        if (Math.random() < 0.5) {
            condition = "ok";
        } else {
            condition = "fail";
        }
        //redirection 시 정보전달은 RedirectAttributes 활용
        rttr.addAttribute("condition", condition);
        rttr.addAttribute("type", "soccer");
        rttr.addAttribute("address", "신촌");
        rttr.addAttribute("city", "서울");

        //query string;
        return "redirect:/main22/sub10?condition=" + condition;
    }

    @GetMapping("sub10")
    public void sub10(String condition) {
        System.out.println("Controller22.sub10");
    }


    @GetMapping("sub11")
    public String sub11(RedirectAttributes rttr) {
        //redirection시 정보 전달은 RedirectAttributes활용
        //addAttribut :쿼리 스트링에 붙고
        rttr.addAttribute("type", "soccer");
        //addFlashAttribut:모델에 붙음
        rttr.addFlashAttribute("attr1", List.of("car", "food", "phone"));
        return "redirect:/main22/sub12";
    }

    //    @GetMapping("sub12")
//    public void sub12(Model model) {
//        Object attr1 = model.getAttribute("attr1");
//        System.out.println("attr1 = " + attr1);
//
//    }
    @GetMapping("sub12")
    public void sub12(@ModelAttribute("attr1") List<String> attr1) {
        System.out.println("attr1 = " + attr1);

    }

    @GetMapping("sub13")
    public void method13() {
    }

    @PostMapping("sub14")
    public String method14(String id, String pw, RedirectAttributes rttr) {
        boolean ok = id.equals(pw);
        if (ok) {
            // 로그인 성공시
            // 메인 페이지로 redirect
            rttr.addFlashAttribute("message", "로그인 성공하였습니다.");
            return "redirect:/main22/sub15";
        } else {
            // 로그인 실패시
            // 로그인 페이지로 redirect
            rttr.addFlashAttribute("message", "아이디와 패스워드를 확인해주세요");
            return "redirect:/main22/sub13";

        }
    }

    @GetMapping("sub15")
    public void method15() {
    }
}

