<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container mt-5 px-4">
                                <div class="row">
                                    <div class="col-md-6 col-12 mx-auto">
                                        <h3>Create user: </h3>
                                        <hr>
                                        <form:form action="/admin/user/create" method="post" modelAttribute="newUser">
                                            <div class="row mb-3">
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="email" class="form-label">Email: </label>
                                                    <form:input type="email" class="form-control" path="email"
                                                        placeholder="" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="password" class="form-label">Passwrod: </label>
                                                    <form:input type="password" class="form-control" path="password"
                                                        placeholder="" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="phone" class="form-label">Phone: </label>
                                                    <form:input type="text" class="form-control" path="phone"
                                                        placeholder="" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="name" class="form-label">Name: </label>
                                                    <form:input type="text" class="form-control" path="fullName"
                                                        placeholder="" />
                                                </div>
                                                <div class="mb-3 col-12 ">
                                                    <label for="address" class="form-label">Address: </label>
                                                    <form:input type="text" class="form-control" path="address"
                                                        placeholder="" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="avatarFile" class="form-label">Choose Avatar</label>
                                                    <input class="form-control" type="file" id="avatarFile"
                                                        accept=".png, .jpg , .jpeg">
                                                </div>
                                                <img id="avatarPreview" style="display: none;" alt="Avatar Preview" />

                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="" class="form-label">Role</label>
                                                    <form:select path="role.name" class="form-select"
                                                        aria-label="Default select example">
                                                        <form:option value="ADMIN">Admin</form:option>
                                                        <form:option value="USER">User</form:option>

                                                    </form:select>
                                                </div>

                                            </div>
                                            <div class="col-12 mb-5">
                                                <input path="" class="btn btn-primary" type="submit" value="Create" />
                                            </div>


                                        </form:form>

                                    </div>

                                </div>


                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />

                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
                <script src="js/chart-area-demo.js"></script>
                <script src="js/chart-bar-demo.js"></script>
                <script src="js/datatables-simple-demo.js"></script>
            </body>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <script>
                $(document).ready(() => {
                    const avatarFile = $("#avatarFile");
                    avatarFile.change(function (e) {
                        const imgURL = URL.createObjectURL(e.target.files[0]);
                        $("#avatarPreview").attr("src", imgURL);
                        $("#avatarPreview").css("display", "block");
                    });
                });
            </script>

            </html>