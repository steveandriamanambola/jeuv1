<%-- 
    Document   : calcul
    Created on : 13 févr. 2018, 09:33:48
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
        <title>Quizz</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script> 
    </head>
    <body style="background-color: #FFFF66;">
        
<%
    
    int nbr = 0;
    int pointmax =0 ;
    QuestionDAO al= new QuestionDAO();
    List<QuestionD> det = new ArrayList<>();
    det=al.Find_list();
    
    int i = 0;
    
    while( i < det.size()){
        String n = request.getParameter("check"+i);
        //out.println(n);

        nbr = nbr + Integer.valueOf(request.getParameter("check"+i));
        pointmax = pointmax +2;
        i++;
        
    }
    
    
    
    int additionpoint = nbr;


    //out.println(additionpoint);
%>
<%int pourcentage = (100 * additionpoint)/pointmax;%>
    <label>Voici Votre Points Par Rapport Au Reponse Que Vous Avez Donner :</label>
    <p><%out.println(pourcentage+"%");%></p>
    <a href="index.jsp"><button>Essayer l'application mobile</button></a>
    </body>
</html>
