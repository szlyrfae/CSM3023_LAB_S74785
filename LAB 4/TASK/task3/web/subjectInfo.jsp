<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="result-box" style="border: none; background: transparent; padding: 0;">

    <div class="result-group" style="border: none;">
        <label style="display: inline; font-weight: bold;">Code:</label>
        <span><%= request.getParameter("code")%></span>
    </div>

    <div class="result-group" style="border: none;">
        <label style="display: inline; font-weight: bold;">Subject:</label>
        <span><%= request.getParameter("subject")%></span>
    </div>

    <div class="result-group" style="border: none;">
        <label style="display: inline; font-weight: bold;">Credit:</label>
        <span><%= request.getParameter("credit")%></span>
    </div>

</div>