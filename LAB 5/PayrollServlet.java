package com.lab.controller;

import com.lab.bean.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/payroll")
public class PayrollServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Create and populate the employee list
        List<Employee> list = new ArrayList<>();
        list.add(new Employee("E001", "Ali Hassan",    "Engineering",  4500.00));
        list.add(new Employee("E002", "Siti Aminah",   "HR",           2800.00));
        list.add(new Employee("E003", "Raj Kumar",     "Finance",      3200.00));
        list.add(new Employee("E004", "Mei Ling",      "Marketing",    2500.00));
        list.add(new Employee("E005", "John Tan",      "IT",           5000.00));

        // Share list to JSP
        request.setAttribute("employeeList", list);

        // Forward to view
        request.getRequestDispatcher("/payroll_view.jsp").forward(request, response);
    }
}