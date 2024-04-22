package com.study.controller;

import com.study.domain.MyBean241;
import com.study.domain.MyBean254Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Controller
@RequestMapping("main28")
public class Controller28 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1() {

    }

    @PostMapping("sub1")
    public String method2(MyBean254Customer customer, RedirectAttributes rttr) throws SQLException {
        System.out.println("customer = " + customer);
        String sql = """
                INSERT INTO Customers
                (CustomerName,ContactName,Address,City,PostalCode,Country)
                VALUES (?,?,?,?,?,?)
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (pstmt; conn) {

            pstmt.setString(1, customer.getName());
            pstmt.setString(2, customer.getContactName());
            pstmt.setString(3, customer.getAddress());
            pstmt.setString(4, customer.getCity());
            pstmt.setString(5, customer.getPostalCode());
            pstmt.setString(6, customer.getCountry());

            int rowCount = pstmt.executeUpdate();
            if (rowCount == 1) {
                rttr.addFlashAttribute("message", "새 고객이 등록");
            }
        }
        return "redirect:/main28/sub1";
    }

    //임원추가
    @GetMapping("sub2")
    public void method3() {
    }

    @PostMapping("sub2")
    public String method4(MyBean241 myBean241, RedirectAttributes rttr) throws SQLException {
        System.out.println("myBean241 = " + myBean241);
        String sql = """
                INSERT INTO Employees
                (LastName,FirstName,BirthDate,Photo,Notes)
                VALUES (?,?,?,?,?)
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);

        try (pstmt; conn) {
            pstmt.setString(1, myBean241.getLastName());
            pstmt.setString(2, myBean241.getFirstName());
            pstmt.setString(3, myBean241.getBirthDate());
            pstmt.setString(4, myBean241.getPhoto());
            pstmt.setString(5, myBean241.getNotes());

            int rowCount = pstmt.executeUpdate();
            if (rowCount == 1) {
                rttr.addFlashAttribute("message", "저장성공");
            } else {
                rttr.addFlashAttribute("message", "저장실패");
            }
        }

        return "redirect:/main28/sub2";
    }
}
