<%@ page import="Dao.ProjetDaoImpl" %>
<%@ page import="Dao.Connection_JDBC" %>
<%@ page import="java.util.List" %>
<%@ page import="Metier.Projet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
    <style>
        .nav-link {
            margin-left: 20px; /* Ajustez cette valeur selon vos besoins */
        }
        .col-auto {
            background-color: #1C5EBC;
        }
        a {
            color: rgb(255 255 255);
            text-decoration: underline;
        }
        .home {
            text-align: center;
        }
        .title {
            margin-bottom: 20px;
        }
        .contenu {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .btnaj {
            padding-top: 20px;
            margin-bottom: 20px;
            text-align: center;
        }
        .btnaj a {
            background-color: #1C5EBC;
            width: 100%;
            max-width: 200px;
        }
        .card-deck {
            margin: 20px;
            flex: 1 0 300px;
            max-width: 300px;
        }
        .card-footer a {
            background-color: #1C5EBC;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                    <li class="nav-item">
                        <a href="index.jsp" class="nav-link active"> <i class='bx bx-grid-alt nav-icon text-warning'></i>
                            <span class="nav_name">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="Afficherprojet" class="nav-link"> <i class='bx bx-briefcase nav-icon text-warning'></i>
                            <span class="nav_name"> Projets</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="AfficherTache" class="nav-link"> <i class='bx bx-task nav-icon text-warning'></i>
                            <span class="nav_name">Tâches</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link"> <i class='bx bx-box nav-icon text-warning'></i>
                            <span class="nav_name">Ressources</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col">
            <div class="container">
                <div class="btnaj">
                    <a href="Creer_projet.jsp" class="btn btn-warning text-white">Créer Projet</a>
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
                                <a href="editProjet?id_Proj=<%= projet.getId_Proj() %>" class="btn btn-warning text-white">Edit</a>
                                <a href="deleteProjet?id_Proj=<%= projet.getId_Proj() %>" class="btn btn-warning text-white" onclick="return confirm('Voulez-vous vraiment supprimer ce projet?')">Supprimer</a>
                                <a href="AfficherTache?id_Proj=<%= projet.getId_Proj() %>" class="btn btn-warning text-white">Tâche</a>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
