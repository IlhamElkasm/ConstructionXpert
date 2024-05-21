<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="index.jsp"%>
<!-- Include Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

   <style>
    
     .btnaj{
         padding-top:100px;
         margin-bottom: 10px;    }
     .btnaj a{
          width:100%;
     }
     
   </style>
</head>
<body>               
<div class="btnaj">
<a href="Creer_projet.jsp" class="btn btn-info">Créer Project</a>
</div>
<div class="card-deck">
        <div class="card text-center shadow">
            <div class="card-header">
              <h4>Free</h4>
              <h5>£0!</h5>
            </div>
                                    
            <div class="card-body">
              <p class="card-text">Great for personal projects Lorem ipsum dolor 
                sit amet consectetur adipisicing elit. 
                Laudantium explicabo excepturi eaque. Corporis, molestias ipsam.</p>
            </div>
                                    
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Date de debut : <span>20/05/2024</span></li>
              <li class="list-group-item">Date de fin :  <span>12/20/2025</span></li>
            </ul>
                                    
            <div class="card-footer">
               <a href="edit_projet.jsp" class="btn btn-info">Edit Project</a>
               <a href="#" class="btn btn-info">Supprimer Project</a>
            </div>
        </div>
         <div class="card text-center shadow">
            <div class="card-header">
              <h4>Free</h4>
              <h5>£0!</h5>
            </div>
                                    
            <div class="card-body">
              <p class="card-text">Great for personal projects Lorem ipsum dolor 
                sit amet consectetur adipisicing elit. 
                Laudantium explicabo excepturi eaque. Corporis, molestias ipsam.</p>
            </div>
                                    
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Date de debut : <span>20/05/2024</span></li>
              <li class="list-group-item">Date de fin :  <span>12/20/2025</span></li>
            </ul>
                                    
            <div class="card-footer">
               <a href="edit_projet.jsp" class="btn btn-info">Edit Project</a>
               <a href="#" class="btn btn-info">Supprimer Project</a>
            </div>
        </div>
    </div>
</body>
</html>