<%-- 
    Document   : utilisateur
    Created on : 13 févr. 2018, 17:03:18
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
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script> 
    </head>
       <body style="background-color: #FFFF66;">
           
           <h2 align='center'>Liste des Utilisateur</h2>
<ul class="nav nav-pills nav-justified" id="myTab">
  <li class="active"><a href="question.jsp">question</a></li>
  <li><a href="avatar.jsp" >avatar</a></li>
  <li><a href="reponse.jsp" >reponse</a></li>  
</ul>
<%
ClientDAO al= new ClientDAO();
List<ClientD> Client = new ArrayList<>();
Client=al.Find_list();
%>
<table class="table table-striped" border='1'>
<tr>
	<th>NOM</th>
	<th>PRENOM</th>
	<th>AGE</th>
	<th>LOISIR</th>
	<th>DESCRIPTION</th>
        <th>MENTION J'AIME</th>
	<th>AVATAR DE JEU</th>
        <th>POURCENTAGE</th>
        <th>TYPE UTILISATEUR</th>
</tr>
<%  for(int i=0;i<Client.size();i++){ %>
<tr>
	<td><%  out.println(Client.get(i).get_nom()); %></td>
	<td><%  out.println(Client.get(i).get_prenom()); %></td>
	<td><% out.println(Client.get(i).get_age());  %></td>
	<td><% out.println(Client.get(i).get_loisir());  %></td>
	<td><% out.println(Client.get(i).get_description());  %></td>
        <td><% out.println(Client.get(i).get_jaime());  %></td>
        <td><% out.println(Client.get(i).get_avatare());  %></td>
        <td><% out.println(Client.get(i).get_pourcentage());  %>%</td>
        
        <td>
            <%
                if((Client.get(i).get_admin())==0)
                    {
                        out.print("administrateur");
                    }else
                {
                    out.print("Simple Utilisateur");
                }  
            %></td>      
</tr>
<%  } %>
</table>
    </body>
</html>
