<%-- 
    Document   : question
    Created on : 9 févr. 2018, 12:08:29
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
        <title>Backoffice Question</title>
                <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script> 
    </head>
    <h2 align="center">Liste des Questions</h2>
  <body style="background-color: #FFFF66;">
    <ul class="nav nav-pills nav-justified" id="myTab">
  <li class="active"><a href="utilisateur.jsp">Accueil</a></li>
  <li><a href="avatar.jsp" >avatar</a></li>
  <li><a href="reponse.jsp" >reponse</a></li>  
</ul>
  

  
<form action="verifQuestion.jsp" method="post">
    <p><table border="1" cellpadding="3" cellspacing="2" width="90%" align="center">
        <tr>
            <td bgcolor="#FF9900" width="100"><b>question</b></td>
            <td><input type="text" name="question"></td>
        </tr>
    </table></p>
    <p align="center"><input type="submit" value="Nouvel question"></p>
</form>
<table class="table table-striped" class="table" border="1">
<%
QuestionDAO al= new QuestionDAO();
List<QuestionD> question = new ArrayList<>();
question=al.Find_list();
%>
<tr>
	<th>QUESTION</th>
</tr>
<%  for(int i=0;i<question.size();i++){ %>
<tr>
	<td><%  out.println(question.get(i).get_question()); %></td>
</tr>
<%  } %>
</table>
    </body>
</html>
