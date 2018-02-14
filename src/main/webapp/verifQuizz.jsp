<%-- 
    Document   : verifQuizz
    Created on : 13 févr. 2018, 07:42:00
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
        <title>QUIZZ</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
<body style="background-color: #FFFF66;">
        <%
String n=request.getParameter("id");
ReponseDAO al= new ReponseDAO();
List<ReponseD> Avatar = new ArrayList<>();
List<ReponseD> det = new ArrayList<>();
Avatar=al.Find_list1(n);
det=al.Find_list1(n);
%>
<form action="calcul.jsp" method="GET">
<%  for(int i=0;i<1;i++){ %>


<label>Avatar :</label>
<label><%  out.println(Avatar.get(i).get_avatar()); %></label></br></br></br>
<%  } %>

<%  for(int i=0;i<det.size();i++){ %>
<label>Question : </label>
<label> <%  out.println(det.get(i).get_question()); %></label></br>
<label>Reponse :</label>	
<ul>
    
    <li><input value="2" type="radio" name="check<%out.print(i);%>"><% out.println(det.get(i).get_rep1());  %></li>
    <li><input value="1" type="radio" name="check<%out.print(i);%>"><% out.println(det.get(i).get_rep2());  %></li>
    <li><input value="0" type="radio" name="check<%out.print(i);%>"><% out.println(det.get(i).get_rep3());  %></li>
</ul>        

<%  } %>
<button>valider</button>
</form>
    </body>
</html>
