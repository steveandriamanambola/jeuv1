<%-- 
    Document   : verifFiche
    Created on : 13 févr. 2018, 07:06:23
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fiche Individuel</title>
                <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
<body style="background-color: #FFFF66;">
        
<%
String n=request.getParameter("id");
AvatarDAO al= new AvatarDAO();
List<AvatarD> Avatar = new ArrayList<>();
Avatar=al.Find_list1(n);
%>

<%  for(int i=0;i<Avatar.size();i++){ %>
<label>Nom :</label>
	<%  out.println(Avatar.get(i).get_nom()); %></br>
<label>Prenom :</label>
	<%  out.println(Avatar.get(i).get_prenom()); %></br>
        
<label>Age :</label>
	<% out.println(Avatar.get(i).get_age());  %></br>
<label>Loisir :</label>
	<% out.println(Avatar.get(i).get_loisir());  %></br>
<label>Description :</label>
        
	<% out.println(Avatar.get(i).get_description());  %></br>
        <a href="verifQuizz.jsp?id=<% out.println(Avatar.get(i).get_nom());%>"><button>QUIZZ</button></a></br>

<%  } %>

    </body>
</html>
