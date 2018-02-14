<%-- 
    Document   : verifAvatar
    Created on : 9 févr. 2018, 08:34:55
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
<%@page import="rojo.AvatarDAO"%>
<%@page import="rojo.AvatarD"%>
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
AvatarDAO avd= new AvatarDAO();
AvatarDAO al= new AvatarDAO();
avd.insert(n,p,a,l,d);

response.sendRedirect("http://localhost:8084/ROJO/avatar.jsp");
%>
    </body>
    
</html>
