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
                    <div class="card-header bg-primary text-white">
                        <h2 class="card-title">Creer Projet</h2>
                    </div>
                    <div class="card-body">
                        <form action="handle-transaction" method="POST">
                            <div class="form-group">
                                <label for="montant">budget</label>
                                <input type="text" class="form-control" id="montant" name="budget" placeholder="budget">
                            </div>
                            <div class="form-group">
                                <label for="categorie">Catgorie</label>
                                <select class="form-control" id="categorie" name="catgorie">
                                    <option disabled selected>Catgorie</option>
                                    <option>Achats</option>
                                    <option>Telephone</option>
                                    <option>Sport</option>
                                    <option>tudes</option>
                                    <option>Voiture</option>
                                    <option>Vtements</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="date">Date</label>
                                <input type="date" class="form-control" id="date" name="date">
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>
                                <input type="text" class="form-control" id="description" name="description" placeholder="Description">
                            </div>
                            <div class="container test-center">
                              <a href="/Budget-Managermvc/" 
                              class="btn btn-outline-danger">Back</a>
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