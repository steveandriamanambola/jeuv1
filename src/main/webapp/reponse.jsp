<%-- 
    Document   : reponse
    Created on : 10 févr. 2018, 22:25:57
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
        <title>Backoffiice Question/Reponse</title>
                <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script> 
    </head>
    <body style="background-color: #FFFF66;">
        <h2 align="center">Liste des Quizz</h2>
<ul class="nav nav-pills nav-justified" id="myTab">
  <li class="active"><a href="utilisateur.jsp">Client</a></li>
  <li><a href="question.jsp" >question</a></li>
  <li><a href="avatar.jsp" >avatar</a></li>  
</ul>


<form action="verifReponse.jsp" method="post">
    <p><table border="1" cellpadding="3" cellspacing="2" width="90%" align="center">
        <tr>
            <td bgcolor="#FF9900" width="100">avatar</td>
            <td >
            <select name="avatar" >
<%
AvatarDAO al= new AvatarDAO();
List<AvatarD> Avatar = new ArrayList<>();
Avatar=al.Find_list();

%>
<%  for(int i=0;i<Avatar.size();i++){ %>
                <option><%  out.println(Avatar.get(i).get_nom()); %></option>
  <%   } %>
            </select>
            </td>
        </tr>
    	<tr>
            <td bgcolor="#FF9900" width="100">question</td>
            <td >
            <select name="quest">
<%
QuestionDAO ca= new QuestionDAO();
List<QuestionD> question = new ArrayList<>();
question=ca.Find_list();
%>
 <%for(int j=0;j<question.size();j++){ %>

            	<option><%out.println(question.get(j).get_question());%></option>
             <% } %>
            </select>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF9900" width="100">reponse1</td>
            <td><input type="text" name="rep1"></td>
        </tr>
        <tr>
            <td bgcolor="#FF9900" width="100">reponse2</td>
            <td><input type="text" name="rep2"></td>
        </tr>
        <tr>
            <td bgcolor="#FF9900" width="100">reponse3</td>
            <td><input type="text" name="rep3"></td>
        </tr>
        <tr>
            <td bgcolor="#FF9900" width="100">points</td>
            <td><input type="text" name="pts"></td>
        </tr>
    </table></p>
    <p align="center"><input type="submit" value="Ajouter reponse"></p>
</form>
            
            
            
            
<table class="table table-striped" class="table" border="1">
<%
ReponseDAO ki= new ReponseDAO();
List<ReponseD> Reponse = new ArrayList<>();
Reponse=ki.Find_list();
%>
<tr>
	<th>Avatar</th>
	<th>Question</th>
	<th>REPONSE1</th>
	<th>REPONSE2</th>
	<th>REPONSE3</th>
        <th>POINTS</th>
</tr>
<%  for(int k=0;k<Reponse.size();k++){ %>
<tr>
	<td><%  out.println(Reponse.get(k).get_avatar()); %></td>
	<td><%  out.println(Reponse.get(k).get_question()); %></td>
	<td><% out.println(Reponse.get(k).get_rep1());  %></td>
	<td><% out.println(Reponse.get(k).get_rep2());  %></td>
	<td><% out.println(Reponse.get(k).get_rep3());  %></td>
        <td><% out.println(Reponse.get(k).get_pts());  %></td>
</tr>
<%  }        
%>
</table>

    </body>
</html>
