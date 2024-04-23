package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import com.study.mapper.Mapper02;
import com.study.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {

    private final Mapper03 mapper;
    private final Mapper02 mapper02;

    @RequestMapping("sub1")
    public void method1() {
        int rowcount = mapper.deleteOneCustomer();
        System.out.println("rowcount 삭제 = " + rowcount);
    }

    @RequestMapping("sub2")
    public void method2(Integer cid) {
        int rowcount = mapper.deleteOneCustomerByID(cid);
        System.out.println("rowcount 삭제 = " + rowcount);
    }

    @RequestMapping("sub3")
    public void method3(Integer eid) {
        int rowcount = mapper.deleteOneEmployeeByID(eid);
        System.out.println("삭제완료 = " + rowcount);
    }

    @GetMapping("sub4")
    public void method4(MyBean254Customer customer) {
        mapper.insertCustromer(customer);
    }

    @GetMapping("sub5")
    public void method5(MyBean258Employee employee) {
        mapper.insertEmployee(employee);
    }

    @GetMapping("sub6")
    public void method6(@RequestParam(value = "id", required = false) Integer eid, Model model) {
        if (eid != null) {
            MyBean258Employee e = mapper02.selectOneEmployee2(eid);
            model.addAttribute("employee", e);
        }
    }

    @PostMapping("sub6/update")
    public String method7(MyBean258Employee employee, RedirectAttributes rttr) {
        int i = mapper.updateEmployee(employee);

        if (i > 0) {
            rttr.addFlashAttribute("message", i + "명 직원이 수정되었습니다");
        } else {
            rttr.addFlashAttribute("message", "입력되지 않았습니다.");
        }

        rttr.addAttribute("id", employee.getId());
        return "redirect:/main32/sub6";
    }

    //고객 조회후 수정

    @GetMapping("sub7")
    public void method8(@RequestParam(value = "id", required = false) Integer cid, Model model) {
        if (cid != null) {
            MyBean254Customer c = mapper.selectAllCustomers(cid);
            model.addAttribute("customer", c);
        }
    }

    @PostMapping("sub7/update")
    public String method9(MyBean254Customer customer, RedirectAttributes rttr) {
        int i = mapper.updateCustomers(customer);
        if (i > 0) {
            rttr.addFlashAttribute("message", "성공");
        } else {
            rttr.addFlashAttribute("message", "실팽");
        }
        rttr.addAttribute("id", customer.getId());
        return "redirect:/main32/sub7";
    }
}
