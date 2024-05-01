package com.study.controller;

import com.study.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "name", required = false) String searchName, Model model) throws Exception {
        ArrayList<MyBean251> list = new ArrayList<>();
        String sql = STR."""
                SELECT *
                FROM Employees
                WHERE LastName= '\{searchName}'
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (rs; stmt; conn) {
            while (rs.next()) {
                String id = rs.getString(1);
                String lastName = rs.getString(2);
                String firstName = rs.getString(3);
                String birthDate = rs.getString(4);
                String photo = rs.getString(5);
                String notes = rs.getString(6);

                //MyBean251 obj = new MyBean251(id, lastName, firstName, birthDate, photo, notes);
                //list.add(obj);
            }

        }

        model.addAttribute("employees", list);
    }

    @GetMapping("sub2")
    public void method2(@RequestParam(value = "name", required = false) String search, Model model) throws Exception {
        // todo : name 요청 파라미터와 일치하는 상품명으로 상품(Products) 조회
        //  예) SELECT * FROM Products WHERE ProductName = 'Chais'
        ArrayList<MyBean252> list = new ArrayList<>();
        String sql = STR."""
                SELECT *
                FROM Products
                WHERE ProductName ='\{search}'
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (rs; stmt; conn) {
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String unit = rs.getString(5);
                String price = rs.getString(6);

                MyBean252 obj = new MyBean252(id, name, unit, price);
                list.add(obj);
            }
        }
        model.addAttribute("products", list);
    }

    @GetMapping("sub4")
    public String method4(String search, Model model) throws Exception {
        String sql = "SELECT * FROM Customers WHERE CustomerName = ?";
        var list = new ArrayList<MyBean254Customer>();

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, search);

        ResultSet rs = pstmt.executeQuery();

        try (rs; conn; pstmt) {

            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String contactName = rs.getString(3);
                String address = rs.getString(4);
                String city = rs.getString(5);
                String postalCode = rs.getString(6);
                String country = rs.getString(7);

                MyBean254Customer obj = new MyBean254Customer();
                obj.setId(id);
                obj.setCustomerName(name);
                obj.setContactName(contactName);
                obj.setAddress(address);
                obj.setCity(city);
                obj.setPostalCode(postalCode);
                obj.setCountry(country);

                list.add(obj);
            }
        }
        model.addAttribute("customerList", list);

        return "main25/sub4CustomerList";
    }

    @GetMapping("sub5")
    public String method5(String search, Model model) throws Exception {
        var list = new ArrayList<MyBean254Customer>();
        String sql = """
                SELECT * FROM Customers
                WHERE CustomerName LIKE ?
                """;
        String keyword = "%" + search + "%";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, keyword);
        ResultSet rs = pstmt.executeQuery();

        try (rs; conn; pstmt) {

            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String contactName = rs.getString(3);
                String address = rs.getString(4);
                String city = rs.getString(5);
                String postalCode = rs.getString(6);
                String country = rs.getString(7);

                MyBean254Customer obj = new MyBean254Customer();
                obj.setId(id);
                obj.setCustomerName(name);
                obj.setContactName(contactName);
                obj.setAddress(address);
                obj.setCity(city);
                obj.setPostalCode(postalCode);
                obj.setCountry(country);

                list.add(obj);
            }
        }

        model.addAttribute("customerList", list);
        model.addAttribute("prevSearch", search);

        return "main25/sub4CustomerList";
    }

    @GetMapping("sub6")
    public String method6(String search, Model model) throws Exception {
        var list = new ArrayList<MyBean255>();
        String sql = """
                SELECT*
                FROM Products
                WHERE ProductName LIKE ?
                """;
        String keyword = "%" + search + "%";
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, keyword);
        ResultSet rs = pstmt.executeQuery();
        try (rs; conn; pstmt) {
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int price = rs.getInt(6);
                MyBean255 obj = new MyBean255();

                obj.setId(id);
                obj.setName(name);
                obj.setPrice(price);
                list.add(obj);
            }
        }
        model.addAttribute("productList", list);
        model.addAttribute("prevSearch", search);
        return "main25/sub6";
    }

    // 조회 문자열이 contactName 또는 customerName에 포함된 고객들 조회
    @GetMapping("sub7")
    public String method7(String search, Model model) throws Exception {
        var list = new ArrayList<MyBean254Customer>();
        String sql = """
                SELECT *
                FROM Customers
                WHERE CustomerName LIKE ?
                   OR ContactName LIKE ?
                """;
        String keyword = "%" + search + "%";
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, keyword);
        pstmt.setString(2, keyword);

        ResultSet rs = pstmt.executeQuery();

        try (rs; conn; pstmt) {
            while (rs.next()) {
                MyBean254Customer obj = new MyBean254Customer();
                obj.setId(rs.getInt(1));
                obj.setCustomerName(rs.getString(2));
                obj.setContactName(rs.getString(3));
                obj.setAddress(rs.getString(4));
                obj.setCity(rs.getString(5));
                obj.setPostalCode(rs.getString(6));
                obj.setCountry(rs.getString(7));
                list.add(obj);
            }
        }
        model.addAttribute("prevSearch", search);
        model.addAttribute("customerList", list);
        return "main25/sub4CustomerList";
    }

    // todo:
    //  조회 문자열이 last name 또는 first name에 포함된 직원들 조회 메소드 작성

    @GetMapping("sub8")
    public String method8(String search, Model model) throws Exception {
        var list = new ArrayList<MyBean256>();
        String url = """
                SELECT*
                FROM Employees
                WHERE FirstName LIKE ?
                OR LastName LIKE ?
                """;
        String keyword = "%" + search + "%";
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(url);
        pstmt.setString(1, keyword);
        pstmt.setString(2, keyword);
        ResultSet rs = pstmt.executeQuery();
        try (rs; conn; pstmt) {
            while (rs.next()) {
                MyBean256 obj = new MyBean256();
                obj.setName(rs.getString(2));
                obj.setId(rs.getInt(3));
                list.add(obj);
            }
        }
        model.addAttribute("EmployeesList", list);
        model.addAttribute("prevSearch", search);
        return "main25/sub8";
    }
}
