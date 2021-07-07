package org.eclipse.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.models.Adresse;
import org.eclipse.models.Client;

@WebServlet("/creationAdresse")
public class CreationAdresseServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * Récupération des données saisies, envoyées en tant que paramètres de la
		 * requête GET générée à la validation du formulaire
		 */
		String nom = request.getParameter("nomClient");
		String prenom = request.getParameter("prenomClient");
		String telephone = request.getParameter("telephoneClient");
		String email = request.getParameter("emailClient");

		String rue = request.getParameter("rueClient");
		String codePostal = request.getParameter("codePostalClient");
		String ville = request.getParameter("villeClient");

		String message;
		/*
		 * Initialisation du message à afficher : si un des champs obligatoires du
		 * formulaire n'est pas renseigné, alors on affiche un message d'erreur, sinon
		 * on affiche un message de succès
		 */
		if (nom.trim().isEmpty() || prenom.trim().isEmpty() || telephone.trim().isEmpty() || email.isEmpty()
				|| rue.isEmpty() || codePostal.isEmpty() || ville.isEmpty()) {
			message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"creerAdresse.jsp\">Cliquez ici</a> pour accéder au formulaire de création d'une commande.";
		} else {
			message = "Commande créée avec succès !";
		}
		/*
		 * Création des beans Client et Commande et initialisation avec les données
		 * récupérées
		 */
		Client client = new Client();
		client.setNom(nom);
		client.setPrenom(prenom);
		client.setTelephone(telephone);
		client.setEmail(email);

		Adresse adresse = new Adresse();
		adresse.setClient(client);
		adresse.setRue(rue);
		adresse.setCodePostal(codePostal);
		adresse.setVille(ville);

		/* Ajout du bean et du message à l'objet requête */
		request.setAttribute("adresse", adresse);
		request.setAttribute("message", message);

		/* Transmission à la page JSP en charge de l'affichage des données */
		this.getServletContext().getRequestDispatcher("/WEB-INF/afficherAdresse.jsp").forward(request, response);
	}

}
