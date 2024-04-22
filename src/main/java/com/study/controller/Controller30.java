package com.study.controller;

import com.study.domain.MyBean251;
import com.study.domain.MyBean254Customer;
import com.study.mapper.Mapper01;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@Controller
@RequestMapping("main30")
public class Controller30 {
    @Autowired
    private DataSource dataSource;

    //    직접 만든객체(dependency)
    // private Mapper01 mapper = new Mapper01();
    // inversion of controll (ioc)
    // Dependency Injection (DI)
    @Autowired
    private Mapper01 mapper;


    @GetMapping("sub1")
    public void method1(Integer id, Model model) throws Exception {
        MyBean254Customer c = mapper.getCustomerById(id);
        model.addAttribute("customer", c);
    }

    @PostMapping("sub1/update")
    public String update1(MyBean254Customer customer, RedirectAttributes rttr) throws Exception {
        System.out.println("customer = " + customer);
        String sql = """
                UPDATE Customers
                SET CustomerName=?,
                ContactName=?,
                Address=?,
                City=?,
                PostalCode=?,
                Country=?
                WHERE CustomerID=?
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (pstmt; conn;) {

            pstmt.setString(1, customer.getName());
            pstmt.setString(2, customer.getContactName());
            pstmt.setString(3, customer.getAddress());
            pstmt.setString(4, customer.getCity());
            pstmt.setString(5, customer.getPostalCode());
            pstmt.setString(6, customer.getCountry());
            pstmt.setInt(7, customer.getId());
            int rowCount = pstmt.executeUpdate();
            if (rowCount > 0) {
                rttr.addFlashAttribute("message", customer.getId() + "수정완료");

            } else {
                rttr.addFlashAttribute("message", customer.getId() + "수정실패");
            }

            rttr.addAttribute("id", customer.getId());
            return "redirect:/main30/sub1";

        }
    }

    @GetMapping("sub2")
    public void method2(Integer id, Model model) throws Exception {
        if (id != null) {
            String sql = """
                    SELECT *
                    FROM Employees
                    WHERE EmployeeID=?
                    """;
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            try (rs; pstmt; conn;) {
                if (rs.next()) {
                    MyBean251 c = new MyBean251();
                    c.setId(rs.getInt(1));
                    c.setLastName(rs.getString(2));
                    c.setFirstName(rs.getString(3));
                    c.setBirthDate(rs.getString(4));
                    c.setPhoto(rs.getString(5));
                    c.setNotes(rs.getString(6));

                    model.addAttribute("employee", c);
                }
            }
        }
    }

    @PostMapping("sub2/update")
    public String update2(MyBean251 emplo, RedirectAttributes rttr) throws Exception {
        System.out.println("emplo = " + emplo);
        String sql = """
                UPDATE Employees
                SET LastName=?,
                FirstName=?,
                BirthDate=?,
                Photo=?,
                Notes=?
                WHERE EmployeeID=?
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (pstmt; conn;) {
            pstmt.setString(1, emplo.getLastName());
            pstmt.setString(2, emplo.getFirstName());
            pstmt.setString(3, emplo.getBirthDate());
            pstmt.setString(4, emplo.getPhoto());
            pstmt.setString(5, emplo.getNotes());
            pstmt.setInt(6, emplo.getId());

            int i = pstmt.executeUpdate();
            if (i > 0) {
                rttr.addFlashAttribute("message", emplo.getId() + "수정완료");
            } else {
                rttr.addFlashAttribute("message", emplo.getId() + "수정실패");
            }
        }
        rttr.addAttribute("id", emplo.getId());
        return "redirect:/main30/sub2";
    }
}
