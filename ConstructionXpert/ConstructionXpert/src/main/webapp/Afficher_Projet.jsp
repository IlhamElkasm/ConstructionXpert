<%@ page import="Dao.ProjetDaoImpl" %>
<%@ page import="Dao.Connection_JDBC" %>
<%@ page import="java.util.List" %>
<%@ page import="Metier.Projet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="index.jsp"%>
<!-- Include Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

   <style>
       .contenu{
           display: flex;
           justify-content:space-between;
       }
     .btnaj{
         padding-top:100px;
         margin-bottom: 10px;
     }
     .btnaj a{
          width:100%;
     }

   </style>
</head>
<body>
  <div class="btnaj">
	<a href="Creer_projet.jsp" class="btn btn-info">Créer Project</a>
  </div>

  <div class="contenu">
  <%
      List<Projet> listProjet = (List<Projet>) request.getAttribute("shows");
      for (Projet projet : listProjet){
  %>
  <div class="card-deck">
        <div class="card text-center shadow mb-3" style="max-width: 18rem;">
            <div class="card-header">
                <h4><%= projet.getNom_proj() %></h4>
                <h5><%= projet.getBudget()%></h5>
            </div>
            <div class="card-body">
                <p class="card-text"><%= projet.getDescription()%></p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Date de début : <span><%= projet.getDate_debut()%></span></li>
                <li class="list-group-item">Date de fin : <span><%= projet.getDate_fin()%></span></li>
            </ul>
            <div class="card-footer">
                <a href="edit_projet.jsp" class="btn btn-info">Edit Project</a>
                <a href="#" class="btn btn-danger">Supprimer Project</a>
            </div>
        </div>
  </div>
  <%}%>
  </div>
</body>
</html>