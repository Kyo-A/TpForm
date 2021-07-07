<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Création d'une commande</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <div>
            <form method="get" action="creationAdresse">
                <fieldset>
                    <legend>Informations client</legend>
    
                    <label for="nomClient">Nom <span class="requis">*</span></label>
                    <input type="text" id="nomClient" name="nomClient" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="prenomClient">Prénom </label>
                    <input type="text" id="prenomClient" name="prenomClient" value="" size="20" maxlength="20" />
                    <br />
    
                    <label for="telephoneClient">Numéro de téléphone <span class="requis">*</span></label>
                    <input type="text" id="telephoneClient" name="telephoneClient" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="emailClient">Adresse email</label>
                    <input type="email" id="emailClient" name="emailClient" value="" size="20" maxlength="60" />
                    <br />
                </fieldset>
                <fieldset>
                    <legend>Informations commande</legend>
                    
                    <label for="rueClient">Rue <span class="requis">*</span></label>
                    <input type="text" id="rueClient" name="rueClient" value="" size="20" maxlength="20"/>
                    <br />
                    
                    <label for="codePostalClient">Code Postal <span class="requis">*</span></label>
                    <input type="text" id="codePostalClient" name="codePostalClient" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="villeClient">Ville <span class="requis">*</span></label>
                    <input type="text" id="villeClient" name="villeClient" value="" size="20" maxlength="20" />
                    <br />
                    
                </fieldset>
                <input type="submit" value="Valider"  />
                <input type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
    </body>
</html>