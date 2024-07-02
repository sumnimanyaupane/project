<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 30/06/2024
  Time: 7:53 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    String menu = "";
    String lang[] = request.getParameterValues("lang");
    for (int i = 0; i < lang.length; i++) {
        menu += lang[i] + " ";
    }

    try {
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "postgres");
        Statement st = con.createStatement();
        int i = st.executeUpdate("insert into menu_selection(meal_type) values('" + menu + "')");
        con.close(); // Close connection after use
        response.sendRedirect("Success.jsp");
    } catch (Exception e) {
        System.out.println(e);
    }
%>
