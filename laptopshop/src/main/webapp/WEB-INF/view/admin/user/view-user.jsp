<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                            <h3>View Detail User by ID: ${id}</h3>
                            <hr>
                            <div class="card">
                                <div class="card-header">
                                    Infor User
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Email: ${view.email}</li>
                                    <li class="list-group-item">Full Name: ${view.fullName}</li>
                                    <li class="list-group-item">Address: ${view.address}</li>
                                    <li class="list-group-item">Password: ${view.password}</li>
                                    <li class="list-group-item">Password: ${view.phone}</li>
                                </ul>
                            </div>
                            <a href="/admin/user" class="btn btn-success mt-3"> Back</a>
                        </div>

                    </div>


                </div>
            </body>

            </html>