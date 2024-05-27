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
                    <form id="projectForm" action="add_Projet" method="post" onsubmit="return validateForm()">
                        <div class="form-group">
                            <label for="nom_proj">Nom_Projet</label>
                            <input type="text" class="form-control" id="nom_proj" name="nom_proj" placeholder="nom_proj" required>
                        </div>
                        <div class="form-group">
                            <label for="budget">Budget</label>
                            <input type="number" class="form-control" id="budget" name="budget" placeholder="budget" required>
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input type="text" class="form-control" id="description" name="description" placeholder="Description" required>
                        </div>
                        <div class="form-group">
                            <label for="date_debut">Date de début</label>
                            <input type="date" class="form-control" id="date_debut" name="date_debut" placeholder="date_debut" required>
                        </div>
                        <div class="form-group">
                            <label for="date_fin">Date de fin</label>
                            <input type="date" class="form-control" id="date_fin" name="date_fin" placeholder="date_fin" required>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-warning">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function validateForm() {
        var isValid = true;

        var nom_proj = document.getElementById("nom_proj");
        var budget = document.getElementById("budget");
        var description = document.getElementById("description");
        var date_debut = document.getElementById("date_debut");
        var date_fin = document.getElementById("date_fin");

        // Clear previous errors
        var errorElements = document.getElementsByClassName("error");
        while (errorElements.length > 0) {
            errorElements[0].parentNode.removeChild(errorElements[0]);
        }

        if (nom_proj.value.trim() === "") {
            showError(nom_proj, "Le nom du projet est requis.");
            isValid = false;
        }

        if (budget.value === "" || parseFloat(budget.value) <= 0) {
            showError(budget, "Le budget doit être un nombre positif.");
            isValid = false;
        }

        if (description.value.trim() === "") {
            showError(description, "La description est requise.");
            isValid = false;
        }

        if (date_debut.value === "") {
            showError(date_debut, "La date de début est requise.");
            isValid = false;
        }

        if (date_fin.value === "") {
            showError(date_fin, "La date de fin est requise.");
            isValid = false;
        }

        // Check if the end date is after the start date
        if (date_debut.value && date_fin.value && new Date(date_fin.value) <= new Date(date_debut.value)) {
            showError(date_fin, "La date de fin doit être postérieure à la date de début.");
            isValid = false;
        }

        return isValid;
    }

    function showError(element, message) {
        var error = document.createElement("div");
        error.className = "error text-danger";
        error.innerText = message;
        element.parentNode.insertBefore(error, element.nextSibling);
    }
</script>
<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
