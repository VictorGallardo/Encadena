<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/admin_style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    </head>

    <body>

        <!---------------------------NAV-AREA---------------------------------->

        <div class="nav-area fixed-top ">
            <nav class="navbar navbar-light mx-4">
                <a class="navbar-brand" href="index.jsp">RouteBook <b>Climb</b></a>
                <div class="nav-buttons ">
                    <a href="logoutProcess.jsp" class="btn btn-outline-dark my-2 my-sm-0 bg-light">Cerrar sesión</a>
                </div>
            </nav>
        </div>

        <!--------------------------JUMBOTRON---------------------------------->

        <div class="jumbotron jumbotron-fluid justify-content text-light">

            <p class="lead"></p>

        </div>

        <!-----------------------------FORMS----------------------------------->
        <div class="title">
            <h2 class="text-dark">Zona Administrador</h2>
        </div>
        <div class="forms">
            <div class="accordion" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-secondary btn-lg" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Consultar usuarios y vias
                            </button>
                        </h2>
                    </div>
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">
                            <a class="btn btn-secondary btn-lg" href="crudAdminUsu.jsp" role="button">Usuários</a>
                            <a class="btn btn-secondary btn-lg" href="crudAdminVia.jsp" role="button">Vías</a>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="btn btn-secondary btn-lg" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Acciones directas
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="col-sm-6">
                                <a href="" class="btn btn-success" data-toggle="modal" data-target="#nueva"><i class="material-icons"></i> <span>Nueva Via</span></a>
                                <a href="" class="btn btn-success" data-toggle="modal" data-target="#nuevo"><i class="material-icons"></i> <span>Nuevo Usuario</span></a>
                            </div>
                            <div class="modal fade" id="nuevo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="nueva-title" id="exampleModalLabel">Nuevo Usuario</h3>
                                        </div>
                                        <div class="modal-body">
                                            <form action="crudAdminUsuProcess.jsp" method="get" class="login-form">
                                                <div class="form-group">
                                                    <label for="examplenombre">Nombre</label>
                                                    <input type="text" name="nombre" class="form-control" id="exampleInputPassword1">
                                                </div>
                                                <div class="form-group">
                                                    <label for="examplenombre">Apellido</label>
                                                    <input type="text" name="Apellido" class="form-control" id="exampleInputPassword1">
                                                </div>
                                                <div class="form-group">
                                                    <label for="examplenombre">Email</label>
                                                    <input type="text" name="Email" class="form-control" id="exampleInputPassword1">
                                                </div>
                                                <div class="form-group">
                                                    <label for="examplenombre">Contraseña</label>
                                                    <input type="text" name="Contraseña" class="form-control" id="exampleInputPassword1">
                                                </div>
                                                <hr class="my-4">
                                                <div class="send-btn">
                                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="nueva" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="nueva-title" id="exampleModalLabel">Nueva vía</h3>
                                        </div>
                                        <div class="modal-body">
                                            <form action="crudAdminViaProcess.jsp" method="get" class="login-form">
                                                <div class="form-group">
                                                    <label for="examplenombre">Nombre</label>
                                                    <input type="text" name="nombre" class="form-control" id="exampleInputPassword1">
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputState">Grado</label>
                                                    <select id="inputState" name="grado" class="form-control">
                                                        <option selected>Elige...</option>
                                                        <option>4</option>
                                                        <option>5</option>
                                                        <option>6a</option>
                                                        <option>6a+</option>
                                                        <option>6b</option>
                                                        <option>6b+</option>
                                                        <option>6c</option>
                                                        <option>6c+</option>
                                                        <option>7a</option>
                                                        <option>7a+</option>
                                                        <option>7b</option>
                                                        <option>7b+</option>
                                                        <option>7c</option>
                                                        <option>7c+</option>
                                                        <option>8a</option>
                                                        <option>8a+</option>
                                                        <option>8b</option>
                                                        <option>8b+</option>
                                                        <option>8c</option>
                                                        <option>8c+</option>
                                                        <option>9a</option>
                                                        <option>9a+</option>
                                                        <option>9b</option>
                                                        <option>9b+</option>
                                                        <option>9c</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="examplenombre">Localidad</label>
                                                    <input type="text" name="localidad" class="form-control" id="exampleInputPassword1">
                                                </div>
                                                <div class="form-group">
                                                    <label for="examplenombre">Sector</label>
                                                    <input type="text" name="sector" class="form-control" id="exampleInputPassword1">
                                                </div>
                                                <hr class="my-4">
                                                <div class="send-btn">
                                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            
            (function() {
                'use strict';
                window.addEventListener('load', function() {                  
                    var forms = document.getElementsByClassName('needs-validation');
                    var validation = Array.prototype.filter.call(forms, function(form) {
                        form.addEventListener('submit', function(event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>

    </html>