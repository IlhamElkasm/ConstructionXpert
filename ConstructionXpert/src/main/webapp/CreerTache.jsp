<%@ page import="Metier.Projet" %>
<%@ page import="Dao.ProjetDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">

    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h2 class="card-title">Creer Projet</h2>
                </div>
                <div class="card-body">
                    <form action="CreerTache" method="post">
                        <input type="hidden" name="id_Proj" value="<%= request.getParameter("id_Proj") %>">
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input type="text" class="form-control" id="description" name="description" placeholder="description">
                        </div>
                        <div class="form-group">
                            <label for="date_debut">Date_debut</label>
                            <input type="date" class="form-control" id="date_debut" name="date_debut" placeholder="date_debut">
                        </div>
                        <div class="form-group">
                            <label for="date_fin">Date_fin</label>
                            <input type="date" class="form-control" id="date_fin" name="date_fin" placeholder="date_fin">
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="Statu" name="Statu">
                                <option disabled selected>Statu</option>
                                <option>To do</option>
                                <option>Doing</option>
                                <option>Done</option>
                            </select>
                        </div>
                        <div class="container test-center">
                            <button type="submit" class="btn btn-success btn-block">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
