<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'une adresse</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        Affichage de la chaîne "message" transmise par la servlet
        <p class="info">${ message }</p>
        Puis affichage des données enregistrées dans le bean "adresse" transmis par la servlet
        <p>Client</p>
        Les 5 expressions suivantes accèdent aux propriétés du client, qui est lui-même une propriété du bean adresse
        <p>Nom : ${ adresse.client.nom }</p>
        <p>Prénom : ${ adresse.client.prenom }</p>
        <p>Numéro de téléphone : ${ adresse.client.telephone }</p>
        <p>Email : ${ adresse.client.email }</p>
        <p>Adresse</p>
        <p>Rue : ${ adresse.rue}</p> 
        <p>Code Postal  : ${ adresse.codePostal }</p> 
        <p>Ville  : ${ adresse.ville }</p> 
    </body>
</html>