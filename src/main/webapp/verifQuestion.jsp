<%-- 
    Document   : verifQuestion
    Created on : 9 févr. 2018, 12:17:06
    Author     : HP
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mongodb.MongoException"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="com.mongodb.QueryBuilder"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="rojo.connexion"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="java.util.List"%>
<%@page import="org.bson.types.ObjectId"%>
<%@page import="rojo.QuestionDAO"%>
<%@page import="rojo.QuestionD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
String n=request.getParameter("question");
QuestionDAO avd= new QuestionDAO();
avd.insert(n);

response.sendRedirect("http://localhost:8084/ROJO/question.jsp");
%>
    </body>
</html>
