package com.jxau.web.servlet;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.jxau.domain.Province;
import com.jxau.service.ProvinceService;
import com.jxau.service.impl.ProvinceServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/findProvinceServlet")
public class FindProvinceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*//调用Service查询
        ProvinceService service = new ProvinceServiceImpl();
        List<Province> provinces = service.findAll();

        //序列化provinces为json
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(provinces);*/

        //调用Service查询
        ProvinceService service = new ProvinceServiceImpl();
        String json = service.findAllJson();
        System.out.println(json);
        //响应结果
        response.setContentType("application/json;charset=utf-8");
        response.getWriter().write(json);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);

    }
}
