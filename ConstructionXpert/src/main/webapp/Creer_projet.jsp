<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                    <div class="card-header bg-warning text-white">
                        <h2 class="card-title">Créer Projet</h2>
                    </div>
                    <div class="card-body">
                        <form action="add_Projet" method="post">
                        <div class="form-group">
                                <label for="nom_proj">Nom_Projet</label>
                                <input type="text" class="form-control" id="nom_proj" name="nom_proj" placeholder="nom_proj">
                            </div>
                            <div class="form-group">
                                <label for="budget">budget</label>
                                <input type="number" class="form-control" id="budget" name="budget" placeholder="budget">
                            </div>
                             <div class="form-group">
                                <label for="description">Description</label>
                                <input type="text" class="form-control" id="description" name="description" placeholder="Description">
                             </div>
                            <div class="form-group">
                                <label for="date_debut">Date_debut</label>
                                <input type="date" class="form-control" id="date_debut" name="date_debut" placeholder="date_debut">
                            </div>
                            <div class="form-group">
                                <label for="date_fin">Date_fin</label>
                                <input type="date" class="form-control" id="date_fin" name="date_fin" placeholder="date_fin">
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