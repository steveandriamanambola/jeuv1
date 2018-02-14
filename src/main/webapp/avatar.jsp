<%-- 
    Document   : avatar
    Created on : 9 févr. 2018, 08:33:28
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
        <title>Backoffice Avatar</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script> 
    </head>
   <body style="background-color: #FFFF66;">
       <h2 align="center">Liste des Avatar</h2>
<ul class="nav nav-pills nav-justified" id="myTab">
  <li class="active"><a href="utilisateur.jsp">Client</a></li>
  <li><a href="question.jsp" >question</a></li>
  <li><a href="reponse.jsp" >reponse</a></li>  
</ul>
<form action="verifAvatar.jsp" method="post">
    <p><table border="1" cellpadding="3" cellspacing="2" width="90%" align="center">
        <tr>
            <td bgcolor="#FF9900" width="100"><b>Nom</b></td>
            <td><input type="text" name="nom"></td>
        </tr>
        <tr>
            <td bgcolor="#FF9900" width="100"><b>Prenom</b></td>
            <td><input type="text" name="prenom"></td>
        </tr> 
                <tr>
            <td bgcolor="#FF9900" width="100"><b>Age</b></td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td bgcolor="#FF9900" width="100"><b>Loisir</b></td>
            <td><input type="text" name="loisir"></td>
        </tr>  
                <tr>
            <td bgcolor="#FF9900" width="100"><b>Description</b></td>
            <td><textarea type="text" name="desc"></textarea></td>
        </tr>
    </table></p>
    <p align="center"><input type="submit" value="Nouvel Avatar"></p>
</form>
<table class="table table-striped" class="table" border="1">
<%
AvatarDAO al= new AvatarDAO();
List<AvatarD> Avatar = new ArrayList<>();
Avatar=al.Find_list();
%>
<tr>
	<th>NOM</th>
	<th>PRENOM</th>
	<th>AGE</th>
	<th>LOISIR</th>
	<th>DESCRIPTION</th>
</tr>
<%  for(int i=0;i<Avatar.size();i++){ %>
<tr>
	<td><%  out.println(Avatar.get(i).get_nom()); %></td>
	<td><%  out.println(Avatar.get(i).get_prenom()); %></td>
	<td><% out.println(Avatar.get(i).get_age());  %></td>
	<td><% out.println(Avatar.get(i).get_loisir());  %></td>
	<td><% out.println(Avatar.get(i).get_description());  %></td>	
</tr>
<%  } %>
</table>

    </body>
</html>
