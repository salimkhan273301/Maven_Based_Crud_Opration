<!doctype html>
<html lang="en">
    <head>
       
       

        

       <!--  <script type="text/javascript" src="alljavascriptfunc.js"></script> -->
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <title>Registration form!</title>
    </head>
    <body>

        <div class="p-2">
            <h4 class="text-center text-success">Registration Form</h4>
        </div>

        <div class="container" >

            <div class="card">
                <div class="card-body">
                    <form action="save" method="post">

                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" placeholder="Enter name here...">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Email</label>
                            <input type="text" class="form-control" name="email" placeholder="Enter Email here...">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Gender</label>
                            <input type="text" class="form-control" name="gender" placeholder="Entyer your Gender here...">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">branch</label>
                            <input type="text" class="form-control" name="branch" placeholder="Enter your branch here...">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" placeholder="Enter your Address here...">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Password</label>
                            <input type="text" class="form-control" name="password" placeholder="Enter your Password...">
                        </div>

                        <div class="d-grid gap-2">
                            <button class="btn btn-primary" type="submit">Submit</button>
                        </div>

                    </form>
                    <div class="d-grid gap-2 mt-2">
                        <button class="btn btn-primary" ><a href="show.jsp" style="color:white">Show Data</a></button>
                    </div>


                </div>

            </div>


        </div>


    </body>
</html>