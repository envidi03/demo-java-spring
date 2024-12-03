<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        </head>

        <body>
            <div class="container mt-5">
                <div class="row">
                    <div class="col-md-6 col-12 mx-auto">
                        <h3>Create user</h3>
                        <hr>
                        <form action="" method="post">
                            <div class="mb-3">
                                <label for="email" class="form-label">Email: </label>
                                <input type="email" class="form-control" name="email" id="email" placeholder="" />
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Passwrod: </label>
                                <input type="text" class="form-control" name="password" id="password" placeholder="" />
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone: </label>
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="" />
                            </div>
                            <div class="mb-3">
                                <label for="name" class="form-label">Name: </label>
                                <input type="text" class="form-control" name="name" id="name" placeholder="" />
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address: </label>
                                <input type="text" class="form-control" name="address" id="address" placeholder="" />
                            </div>
                            <input name="" id="" class="btn btn-primary" type="submit" value="Button" />

                        </form>

                    </div>

                </div>


            </div>

        </body>

        </html>