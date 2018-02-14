<%-- 
    Document   : client
    Created on : 13 févr. 2018, 14:57:53
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script> 
    </head>
       <body style="background-color: #FFFF66;">
   
        </ul>
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
        
        <p><a href="inscription.jsp">Besoin d'un autre compte?</br>Inscrivez-vous gratuitement</a></p>

    </body>
</html>
