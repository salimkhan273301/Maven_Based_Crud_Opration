<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@page import="java.util.Iterator"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
            #btn1{
                background-color: blue;
                border-radius: 5px;
                color: white;
            }
             #btn2{
                background-color: red;
                border-radius: 5px;
                color: white;
            }
        </style>
            <!-- <script type="text/javascript" src="alljavascriptfunc.js"></script> -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>


    </head>
    <body>
        
        <div class="container mt-4 text-center">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center mb-3" style="background-color: green; color:pink"> Student Data Table </h1>




                    <form action="show" method="post">
                        <table class="table table-striped table-hover">
                            <thead class="table-success">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Gender</th>
                                    <th scope="col">Branch</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">Password</th>
                                    <th colspan="2" scope="col">Action</th>
                                </tr>
                            </thead>
                            
                           
                            
                
                            
                        <tbody>
                                <c:forEach var="student" items="${s}">
                                    <tr>
                                        <td><c:out value="${student.id}" /></td>
                                        <td><c:out value="${student.name}" /></td>
                                        <td><c:out value="${student.email}" /></td>
                                        <td><c:out value="${student.gender}" /></td>
                                        <td><c:out value="${student.branch}" /></td>
                                         <td><c:out value="${student.address}" /></td>
                                        <td><c:out value="${student.password}" /></td>
                                        <td> 
                                            <input style="background-color:blueviolet;color:white; border-radius:5px " type="submit"  value="Update" onclick="form.action = 'update/${student.id}';">
                                            <input style="background-color: red;color:white; border-radius:5px "  type="submit" id="delete" value="Delete" onclick="form.action = 'delete/${student.id}';" >
                                        </td>
                                    </tr>
                                </c:forEach> 
                            </tbody>
                        </table>

                        <a href="index.jsp" class="btn btn-success"> Add Student </a> 
                        
                         <div class="d-grid gap-2 mt-2">
                        <button class="btn btn-primary"  type="submit" >Show_Data</button>
                    </div>
                        
                    </form> 
                                       
                </div>
            </div>
        </div>

 
    </body>
</html>
