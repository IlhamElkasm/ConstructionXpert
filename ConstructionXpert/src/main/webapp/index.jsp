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
        ul  {
            margin-top: 40%;
            padding: 20%;
            gap: 30px;
        }
        .nav-link {
            margin-left: 20px; /* Ajustez cette valeur selon vos besoins */
        }
        .col-auto{
            background-color: #1C5EBC;
        }
        a{
            color: rgb(255 255 255);
            text-decoration: underline;
        }
        .home {
            margin-left: 10%;
        }
        .imge{
            margin-right: 10%;
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
                        <a href="index.jsp" class="nav_link active"> <i class='bx bx-grid-alt nav_icon text-warning'></i>
                            <span class="nav_name">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="Afficherprojet" class="nav_link"> <i class='bx bx-briefcase nav_icon text-warning'></i>
                            <span class="nav_name"> Projets</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="AfficherTache" class="nav_link"> <i class='bx bx-task nav_icon text-warning'></i>
                            <span class="nav_name">Tâches</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav_link"> <i class='bx bx-box nav_icon text-warning'></i>
                            <span class="nav_name">Ressources</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="home">
            <div class="title2">
                <h2 class="title">Welcome to
                    <br>
                    <span style="color:#F0E3B6"> ConstructionXpert</span>
                    <br> Services</h2>
            </div>

            <img src="ConstructionXpert.png" class="imge">

        </div>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
