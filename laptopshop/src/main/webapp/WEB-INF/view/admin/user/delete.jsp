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
                        <div class="col-12 mx-auto">
                            <div class="d-flex justify-content-between">
                                <h3>Delete the user with id = ${id}</h3>
                            </div>
                            <hr />
                            <div class="alert alert-danger">
                                Are your sure to delete this user?
                            </div>
                            <form:form modelAttribute="newUser" method="post" action="/admin/user/delete">
                                <form:input type="hidden" class="form-control" path="id" value="${id}" />
                                <button class="btn btn-primary">Delete</button>
                            </form:form>
                        </div>

                    </div>
                </div>
            </body>

            </html>