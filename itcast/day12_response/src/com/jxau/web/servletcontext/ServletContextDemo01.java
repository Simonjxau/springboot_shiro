package com.jxau.web.servletcontext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/servletContextDemo01")
public class ServletContextDemo01 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //ServletContext的获取方式
        /*
                1. 通过request对象获取
			         request.getServletContext();
		        2. 通过HttpServlet获取
			         this.getServletContext();
         */
        //通过request对象获取
        ServletContext context1 = request.getServletContext();
        System.out.println(context1);
        //通过HttpServlet获取
        ServletContext context2 = this.getServletContext();
        System.out.println(context2);
        System.out.println(context1 == context2);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doPost(request,response);
    }
}
