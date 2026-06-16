package com.lab.controller;

import com.lab.bean.StudentBean;
import com.lab.dao.StudentDAO;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215) // max ~16 MB for image upload
public class UserServlet extends HttpServlet {

    private StudentDAO studentDAO = new StudentDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");

        if ("register".equals(action)) {
            // --- HANDLE REGISTRATION ---
            StudentBean newStudent = new StudentBean();
            newStudent.setMatricNo(request.getParameter("matricNo"));
            newStudent.setFullname(request.getParameter("fullname"));
            newStudent.setPassword(request.getParameter("password"));

            InputStream inputStream = null;
            Part filePart = request.getPart("profileImage");
            if (filePart != null && filePart.getSize() > 0) {
                inputStream = filePart.getInputStream();
            }

            boolean isSuccess = studentDAO.registerStudent(newStudent, inputStream);
            if (isSuccess) {
                response.getWriter().println(
                    "Registration Successful! <a href='login.html'>Login here</a>");
            } else {
                response.getWriter().println("Registration Failed! " +
                    "<a href='register.html'>Try Again</a>");
            }

        } else if ("login".equals(action)) {
            // --- HANDLE LOGIN ---
            String matric = request.getParameter("matricNo");
            String pass   = request.getParameter("password");

            StudentBean student = studentDAO.loginStudent(matric, pass);
            if (student != null) {
                HttpSession session = request.getSession();
                session.setAttribute("loggedUser", student);
                response.sendRedirect("dashboard.jsp");
            } else {
                response.getWriter().println(
                    "Invalid Credentials! <a href='login.html'>Try Again</a>");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        HttpSession session = request.getSession(false);

        if ("logout".equals(action)) {
            // --- HANDLE LOGOUT ---
            if (session != null) {
                session.invalidate();
            }
            response.sendRedirect("login.html");

        } else if ("delete".equals(action)) {
            // --- HANDLE DELETE ACCOUNT ---
            if (session != null && session.getAttribute("loggedUser") != null) {
                StudentBean user = (StudentBean) session.getAttribute("loggedUser");
                studentDAO.deleteStudent(user.getMatricNo());
                session.invalidate();
            }
            response.sendRedirect("register.html");
        }
    }
}