<%@ page import="Metier.Tache" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

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
        <a href="CreerTache.jsp" class="btn btn-info">Créer Project</a>
    </div>
    <div class="contenu">
        <%
            List<Tache> listTache = (List<Tache>) request.getAttribute("AffiTa");
            for (Tache tache : listTache) {
        %>
        <div class="card-deck">
            <div class="card text-center shadow mb-3" style="max-width: 30rem; height: 23rem;">
                <div class="card-header" style="height: 5rem;">
                    <h4><%= tache.getDate_debut()%></h4>
                    <h5><%= tache.getDate_fin()%></h5>
                </div>
                <div class="card-body"style="height: 5rem;">
                    <p class="card-text">
                        <%= tache.getDescription()%>
                    </p>
                </div>
                <div class="form-group">
                    <select class="form-control" id="Statu" name="Statu">
                        <p><strong>Statut</strong><%= tache.getStatut()%></p>
                    </select>
                </div>
                <div class="form-group">
                   <p><strong>Project</strong><%= tache.getId_Proj()%></p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-info">Edit Project</a>
                    <a href="#" class="btn btn-danger">Supprimer Project</a>
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
