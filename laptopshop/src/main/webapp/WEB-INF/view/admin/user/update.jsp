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
                            <h3>Update user: </h3>
                            <hr>
                            <form:form action="/admin/user/update" method="post" modelAttribute="newUser">
                                <div class="mb-3" style="display: none;">
                                    <label for="id" class="form-label">ID: </label>
                                    <form:input type="text" class="form-control" path="id" placeholder=""
                                        value="${newUser.id}" readonly="true" />
                                </div>
                                <div class="mb-3">
                                    <form:input type="hidden" class="form-control" path="password" placeholder=""
                                        value="${newUser.password}" />
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email: </label>
                                    <form:input type="email" class="form-control" path="email" placeholder=""
                                        value="${newUser.email}" readonly="true" />
                                </div>
                                <div class="mb-3">
                                    <label for="phone" class="form-label">Phone: </label>
                                    <form:input type="text" class="form-control" path="phone" placeholder=""
                                        value="${newUser.phone}" />
                                </div>
                                <div class="mb-3">
                                    <label for="name" class="form-label">Name: </label>
                                    <form:input type="text" class="form-control" path="fullName" placeholder=""
                                        value="${newUser.fullName}" />
                                </div>
                                <div class="mb-3">
                                    <label for="address" class="form-label">Address: </label>
                                    <form:input type="text" class="form-control" path="address" placeholder=""
                                        value="${newUser.address}" />
                                </div>
                                <input path="" class="btn btn-warning" type="submit" value="Update" />
                                <a href="/admin/user" class="btn btn-success"> Back</a>

                            </form:form>

                        </div>

                    </div>


                </div>

            </body>

            </html>