package com.CaiYuxuan.week2.homwork;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloWorldServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter writer = response.getWriter();
        writer.println("Name:Cai Yuxuan");
        writer.println("ID:2022211001000528");
        writer.println("Date and Time 2024-03-14 18:34");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response){

    }
}
