package com.study.controller;

import com.study.domain.MyBean251;
import com.study.domain.MyBean254Customer;
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
@RequestMapping("main29")
public class Controller29 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(Integer id, Model model) throws Exception {
        if (id != null) {


            String sql = """
                    SELECT *
                    FROM Customers
                    WHERE CustomerId=?
                    """;
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            try (rs; pstmt; conn;) {
                if (rs.next()) {
                    MyBean254Customer c = new MyBean254Customer();
                    c.setId(rs.getInt(1));
                    c.setName(rs.getString(2));
                    c.setContactName(rs.getString(3));
                    c.setAddress(rs.getString(4));
                    c.setCity(rs.getString(5));
                    c.setPostalCode(rs.getString(6));
                    c.setCountry(rs.getString(7));

                    model.addAttribute("customer", c);
                }

            }
        }
    }

    @PostMapping("sub1/delete")
    public String method2(Integer id, RedirectAttributes rttr) throws Exception {
        String sql = """
                DELETE FROM Customers
                WHERE CustomerId=?
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, id);
        try (conn; pstmt;) {

            int rowCount = pstmt.executeUpdate();
            if (rowCount > 0) {
                rttr.addFlashAttribute("message", id + "삭제");
            } else {
                rttr.addFlashAttribute("message", id + "삭제 실패");
            }
            return "redirect:/main29/sub1";
        }

    }

    @GetMapping("sub2")
    public void method3(Integer id, Model model) throws Exception {
        if (id != null) {
            String sql = """
                                     
                         SELECT * FROM Employees
                                         WHERE EmployeeId=?
                        
                        
                    """;
            Connection conn = dataSource.
                    getConnection();
            PreparedStatement pstmt = conn.
                    prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet
                    rs = pstmt.executeQuery();
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

    @PostMapping("sub2/delete")
    public String method4(Integer id, RedirectAttributes rttr) throws Exception {
        String sql = """
                DELETE FROM Employees
                WHERE EmployeeId=?
                               
                """;
        Connection con = dataSource.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, id);
        try (con; pstmt;) {

            int rowCount = pstmt.executeUpdate();
            if (rowCount > 0) {
                rttr.addFlashAttribute("message", id + "삭제 완료");
            } else {
                rttr.addFlashAttribute("message", id + "삭제 실패");
            }
            return "redirect:/main29/sub2";
        }
    }
}
