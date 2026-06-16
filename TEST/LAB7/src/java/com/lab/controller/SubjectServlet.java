package com.lab.controller;

import com.lab.bean.StudentBean;
import com.lab.bean.SubjectBean;
import com.lab.dao.SubjectDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SubjectServlet extends HttpServlet {

    private SubjectDAO subjectDAO = new SubjectDAO();

    // Helper: get logged-in matric from session, redirect if not logged in
    private String getMatricOrRedirect(HttpServletRequest req,
                                       HttpServletResponse resp)
            throws IOException {
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("loggedUser") == null) {
            resp.sendRedirect("../login.html");
            return null;
        }
        StudentBean user = (StudentBean) session.getAttribute("loggedUser");
        return user.getMatricNo();
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String matricNo = getMatricOrRedirect(request, response);
        if (matricNo == null) return;

        String action = request.getParameter("action");

        if ("add".equals(action)) {
            // CREATE
            SubjectBean s = new SubjectBean();
            s.setMatricNo(matricNo);
            s.setSubjectCode(request.getParameter("subjectCode"));
            s.setSubjectName(request.getParameter("subjectName"));

            subjectDAO.addSubject(s);
            response.sendRedirect("viewSubjects.jsp");

        } else if ("update".equals(action)) {
            // UPDATE
            SubjectBean s = new SubjectBean();
            s.setId(Integer.parseInt(request.getParameter("id")));
            s.setMatricNo(matricNo);
            s.setSubjectCode(request.getParameter("subjectCode"));
            s.setSubjectName(request.getParameter("subjectName"));

            subjectDAO.updateSubject(s);
            response.sendRedirect("viewSubjects.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String matricNo = getMatricOrRedirect(request, response);
        if (matricNo == null) return;

        String action = request.getParameter("action");

        if ("view".equals(action)) {
            // READ
            List<SubjectBean> subjects = subjectDAO.getSubjectsByMatric(matricNo);
            request.setAttribute("subjectList", subjects);
            request.getRequestDispatcher("subject/viewSubjects.jsp")
                   .forward(request, response);

        } else if ("showEdit".equals(action)) {
            // Load subject into edit form
            int id = Integer.parseInt(request.getParameter("id"));
            SubjectBean s = subjectDAO.getSubjectById(id);
            request.setAttribute("subject", s);
            request.getRequestDispatcher("subject/updateSubject.jsp")
                   .forward(request, response);

        } else if ("delete".equals(action)) {
            // DELETE
            int id = Integer.parseInt(request.getParameter("id"));
            subjectDAO.deleteSubject(id, matricNo);
            response.sendRedirect("SubjectServlet?action=view");
        }
    }
}