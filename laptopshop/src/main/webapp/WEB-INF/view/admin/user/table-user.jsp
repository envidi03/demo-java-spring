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
                        <div class="col-md-12 col-12 mx-auto">
                            <div class="d-flex justify-content-between">
                                <h3>Table User</h3>
                                <a href="/admin/user/create" class="btn btn-primary">Create User</a>
                            </div>
                            <hr>
                            <table class="table table-striped table-bordered ">
                                <thead>
                                    <tr>
                                        <td>ID</td>
                                        <td>Email</td>
                                        <td>Name</td>
                                        <td>Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="list" items="${list}">
                                        <tr>
                                            <td>${list.id}</td>
                                            <td>${list.email}</td>
                                            <td>${list.fullName}</td>
                                            <td>
                                                <a href="/admin/user/${list.id}" class="btn btn-success">View</a>
                                                <a href="/admin/user/update/${list.id}"
                                                    class="btn btn-warning">Update</a>
                                                <a href="/admin/user/delete/${list.id}"
                                                    class="btn btn-danger">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>


            </body>

            </html>