package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
@RequestMapping("main23")
public class Controller23 {
    @RequestMapping("sub1")
    public void sub1(Model model) throws Exception {
        var list = new ArrayList<String>();

        //요청 파라미터 분석/가공
        //비즈니스 로직 실행
        String sql = """
                SELECT FirstName FROM Employees
                """;
        //1.db와 연결
        String url = "jdbc:mariadb://localhost:3306/w3schools";
        String user = "root";
        String password = "1234";
        Connection con = DriverManager.getConnection(url, user, password);
        //2.실행 준비
        Statement statement = con.createStatement();
        //3.쿼리 실행
        ResultSet resultSet = statement.executeQuery(sql);
        try (resultSet; statement; con) {

            while (resultSet.next()) {
                String name = resultSet.getString(1);//첫번째 컬럼의 값 읽기
                list.add(name);

            }
        }
        //4.결과 가공
        //5.자원 닫기
        model.addAttribute("nameList", list);
        //모델에 결과 넣고
        //view로 포워드
    }

    @GetMapping("sub2")
    public void sub2(Model model) throws Exception {
        var list = new ArrayList<String>();
        String sql = """
                SELECT CustomerName FROM Customers
                """;
        //1.db연결
        String url = "jdbc:mariadb://localhost:3306/w3schools";
        String user = "root";
        String password = "1234";
        Connection con = DriverManager.getConnection(url, user, password);
        //2.실행준비
        Statement statement = con.createStatement();
        //3.쿼리실행
        ResultSet resultSet = statement.executeQuery(sql);
        //4.결과가공
        try (resultSet; statement; con) {
            while (resultSet.next()) {
                String name = resultSet.getString(1);
                list.add(name);
            }
        }
        //5.자원닫기 try-with-resources
        //6.모델에 attribute
        model.addAttribute("nameList", list);
        //7.view로 forward
    }
}
