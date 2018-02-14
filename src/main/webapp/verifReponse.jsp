<%-- 
    Document   : verifReponse
    Created on : 10 févr. 2018, 22:40:36
    Author     : HP
--%>
<%@page import="rojo.ReponseD"%>
<%@page import="rojo.ReponseDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
String n=request.getParameter("avatar");
String p=request.getParameter("quest");
String a=request.getParameter("rep1");
String l=request.getParameter("rep2");
String d=request.getParameter("rep3");
String s=request.getParameter("pts");
int pts =Integer.parseInt(s);
ReponseDAO avd= new ReponseDAO();
avd.insert(n,p,a,l,d,pts);
response.sendRedirect("http://localhost:8084/ROJO/reponse.jsp");
%>
    </body>
</html>
