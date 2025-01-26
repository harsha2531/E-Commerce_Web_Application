<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    try {
        if (session != null) {
            // Invalidate the session
            session.invalidate();
        }
        // Redirect the user to the login page
        response.sendRedirect("login.jsp?message=You have been logged out successfully.");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("login.jsp?message=Logout failed. Please try again.");
    }
%>
