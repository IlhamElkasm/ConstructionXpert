<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Metier.Projet" %>
<%@ page import="Dao.ProjetDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="Metier.Tache" %>
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
<%
    // Assuming 'projet' is initialized and available in the request scope.
    Tache tache = (Tache) request.getAttribute("tache");
    if (tache == null) {
        tache = new Tache(); // Avoid NullPointerException by initializing a new object if not present
    }
%>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header bg-warning text-white">
                    <h2 class="card-title">Creer Projet</h2>
                </div>
                <div class="card-body">
                    <form action="EditTache" method="post">
                        <input type="hidden" name="id_Proj" value="<%= tache.getId_Tach()%>">
                        <input type="hidden" name="id_Proj" value="<%= request.getParameter("id_Proj") %>">
                        <div class="form-group">
                            <label for="date_debut">Date_debut</label>
                            <input type="date" class="form-control" id="date_debut" name="date_debut" placeholder="date_debut" value="<%= tache.getDate_debut()%>">
                        </div>
                        <div class="form-group">
                            <label for="date_fin">Date_fin</label>
                            <input type="date" class="form-control" id="date_fin" name="date_fin" placeholder="date_fin" value="<%= tache.getDate_fin()%>">
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input type="text" class="form-control" id="description" name="description" placeholder="description" value="<%= tache.getDescription()%>">
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="Statu" name="Statu" value="<%= tache.getStatu()%>">
                                <option disabled selected>Statu</option>
                                <option value="To do">To do</option>
                                <option value="Doing">Doing</option>
                                <option value="Done">Done</option>
                            </select>
                        </div>
                        <div class="container test-center">
                            <button type="submit" class="btn btn-success btn-warning">Add</button>
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

