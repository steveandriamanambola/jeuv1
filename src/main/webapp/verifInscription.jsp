<%-- 
    Document   : verifClient
    Created on : 13 févr. 2018, 16:44:36
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
<%@page import="rojo.AvatarDAO"%>
<%@page import="rojo.AvatarD"%>
<%@page import="rojo.ReponseD"%>
<%@page import="rojo.ReponseDAO"%>
<%@page import="rojo.ClientD"%>
<%@page import="rojo.ClientDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body bgcolor="#FFFF66">
<%
String n=request.getParameter("nom");
String p=request.getParameter("prenom");
String a=request.getParameter("age");
String l=request.getParameter("loisir");
String d=request.getParameter("desc");
String pa=request.getParameter("pass");
String sx=request.getParameter("sexe");
ClientDAO avd= new ClientDAO();
ClientDAO al= new ClientDAO();
avd.insert(n,p,a,l,d,0,sx,0,0,pa);

response.sendRedirect("http://localhost:8084/ROJO/index.jsp");
%>
    </body>
</html>
