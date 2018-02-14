<%-- 
    Document   : index
    Created on : 13 févr. 2018, 06:59:24
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
        <title>Acceuil</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script> 
    </head>
    <body style="background-color: #FFFF66;">
        
        <ul class="nav nav-pills nav-justified" id="myTab">
            <li class="active"><a href="index.jsp">Accueil</a></li>
            <li><a href="#apropos">A propos</a></li>
            <li><a href="#connexion">connexion</a></li>
        </ul>
        <%
        AvatarDAO al= new AvatarDAO();
        List<AvatarD> Avatar = new ArrayList<>();
        Avatar=al.Find_list();
        %>

        <h2 align="center">Voici la Liste Des Avatars</h2>
        <%  for(int i=0;i<1;i++){ %>
                <label>Nom :</label>
                        <%  out.println(Avatar.get(i).get_nom()); %></br>
                <label>Prenom :</label>
                        <%  out.println(Avatar.get(i).get_prenom()); %></br>       
                <label>Age :</label>
                        <% out.println(Avatar.get(i).get_age());  %>ans</br>
                <label>Loisir :</label>
                        <% out.println(Avatar.get(i).get_loisir());  %></br>
                <label>Description :</label>
                    <% out.println(Avatar.get(i).get_description());  %></br>
                    <a href="verifFiche.jsp?id=<% out.println(Avatar.get(i).get_nom());%>"><button type="button" class="btn btn-success">Voir fiche</button></a></br></br></br>
        <%  } %>
        <section id="connexion"  style="background-color: black;">
        <h4>Connexion</h4>
                <form class="form-horizontal" role="form" name="form" action="verifConnexion.jsp" method="post">
                    <div class="form-group">
                        <label for="inputEmail1" class="col-sm-4 control-label">Pseudo</label>
                        <div class="col-sm-20">
                            <input type="text" name="mail" class="form-control" placeholder="Adresse email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-sm-4 control-label">Mot de passe</label>
                        <div class="col-sm-20">
                            <input type="password" name="pass" class="form-control" placeholder="Mot de passe">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-20">
                            <button type="submit" class="btn btn-primary"><i class="icon icon-check icon-lg"></i> Valider</button>
                        </div>
                    </div>
                </form>
        </section>
        

    </body>
</html>
