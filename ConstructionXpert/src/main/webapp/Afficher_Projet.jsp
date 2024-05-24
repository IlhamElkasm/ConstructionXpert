<%@ page import="Dao.ProjetDaoImpl" %>
<%@ page import="Dao.Connection_JDBC" %>
<%@ page import="java.util.List" %>
<%@ page import="Metier.Projet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <%@include file="index.jsp"%>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .contenu {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .btnaj{
            padding-top:100px;
            margin-bottom: 10px;
        }
        .btnaj a {
            width: 100%;
        }
        .card-deck {
            margin: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="btnaj">
        <a href="Creer_projet.jsp" class="btn btn-info">Créer Project</a>
    </div>
    <div class="contenu">
        <%
            List<Projet> listProjet = (List<Projet>) request.getAttribute("shows");
            for (Projet projet : listProjet) {
        %>
        <div class="card-deck">
            <div class="card text-center shadow mb-3" style="max-width: 20rem;">
                <div class="card-header">
                    <h4><%= projet.getNom_proj() %></h4>
                    <h5><%= projet.getBudget() %> $</h5>
                </div>
                <div class="card-body">
                    <p class="card-text"><%= projet.getDescription() %></p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Date de début : <span><%= projet.getDate_debut() %></span></li>
                    <li class="list-group-item">Date de fin : <span><%= projet.getDate_fin() %></span></li>
                </ul>
                <div class="card-footer">
                    <a href="editProjet?id_Proj=<%= projet.getId_Proj() %>" class="btn btn-info">Edit</a>
                    <a href="deleteProjet?id_Proj=<%= projet.getId_Proj() %>" class="btn btn-danger">Supprimer</a>
                    <a href="AfficherTache?id_Proj=<%= projet.getId_Proj() %>" class="btn btn-danger">Tache</a>

                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>
<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
