package com.data.demo3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet", value = "/student-list")
public class StudentServlet extends HttpServlet {
    private List<Student> students = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        // khoi tao danh sach student
        students.add(new Student(1, "Nguyen Ngoc", 6.5, "HN"));
        students.add(new Student(2, "Tran Nam", 9.5, "HP"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("students", students);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
