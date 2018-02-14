<%-- 
    Document   : inscription
    Created on : 13 févr. 2018, 15:30:35
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscription</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script> 
    </head>
    <body style="background-color: #FFFF66;">
               <h4 align='center'>Inscription</h4>
                    <form class="form-horizontal" role="form" name="form" action="verifInscription.jsp" method="post">
                        
                            <label for="inputEmail1" class="control-label">Nom :</label>
                            <div class="col-sm-20">
                                <input type="text" name="nom" class="form-control" placeholder="Adresse email">
                            </div>
                            <label for="inputEmail1" >Prenom :</label>
                            <div class="col-sm-20">
                                <input type="text" name="prenom" class="form-control" placeholder="Adresse email">
                            </div>
                            <label for="inputEmail1" >Age :</label>
                            <div class="col-sm-20">
                                <input type="text" name="age" class="form-control" placeholder="Adresse email">
                            </div>
                           <label for="inputEmail1" >sexe :</label>
                            <div class="col-sm-20">
                                <select type="text" name="sexe" class="form-control" placeholder="Adresse email">
                                    <option>masculin</option>
                                    <option>femme</option>
                                    <option>autre...</option>    
                                </select>
                            </div
                            <label for="inputEmail1" >Loisir :</label>
                            <div class="col-sm-20">
                                <input type="text" name="loisir" class="form-control" placeholder="Adresse email">
                            </div>
                            <label for="inputEmail1">Description :</label>
                            <div class="col-sm-20">
                                <textarea type="text" name="desc" class="form-control" placeholder="comment etes vous?"></textarea>
                            </div>
                            
                            <label for="inputPassword1">Mot de passe :</label>
                            <div class="col-sm-20">
                                <input type="password" name="pass" class="form-control" placeholder="Mot de passe">
                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary"><i class="icon icon-user-plus"></i> Valider</button>
                            </div>
                        </div>
                    </form>
    </body>
</html>
