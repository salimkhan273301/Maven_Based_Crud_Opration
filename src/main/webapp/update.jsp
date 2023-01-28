 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@page import="java.util.Iterator"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
    <head>
       
       

        

       
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <title>Update form!</title>
    </head>
    <body class="bg-warnning">

        <div class="p-2">
            <h4 class="text-center text-success">Update Form</h4>
        </div>

        <div class="container" >

            <div class="card">
                <div class="card-body">
                    <form action="../update" method="post">
                    <div class="mb-3">
                           <!--  <label for="exampleFormControlInput1" class="form-label">Id</label> -->
                            <input type="hidden"  class="form-control" name="id" value="${s.id}">
                        </div>

                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" value="${s.name}">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Email</label>
                            <input type="text" class="form-control" name="email" value="${s.email}">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Gender</label>
                            <input type="text" class="form-control" name="gender" value="${s.gender}">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">branch</label>
                            <input type="text" class="form-control" name="branch" value="${s.branch}">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" value="${s.address}">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Password</label>
                            <input type="text" class="form-control" name="password" value="${s.password}">
                        </div>

                        <div class="d-grid gap-2">
                            <button class="btn btn-primary" type="Update">Submit</button>
                        </div>

                    </form>
                   <!--  <div class="d-grid gap-2 mt-2">
                        <button class="btn btn-primary" ><a href="show.jsp" style="color:white">Show Data</a></button>
                    </div>
 -->

                </div>

            </div>


        </div>


    </body>
</html>