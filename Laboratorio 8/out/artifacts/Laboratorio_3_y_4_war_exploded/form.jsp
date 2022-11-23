<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Datos</title>
    <link rel="stylesheet" href="css/style.css">
</head>
</header>
<body>
<div class="container">
    <div class="header">
        <nav style="background-color: rgba(0,0,0,0.7);">
            <ul>
                <li><a href="index.jsp">Volver al inicio</a></li>
            </ul>
        </nav>
    </div>
</div>
<center>
    <h1>Datos personales</h1>
<% String nombre, apellido, cedula, fbirth, numero, email, genero, exp, education, conocimiento, open;

    nombre = request.getParameter("nombre");
    apellido = request.getParameter("apellido");
    cedula = request.getParameter("cedula");
    genero = request.getParameter("genero");
    fbirth = request.getParameter("fbirth");
    numero = request.getParameter("numero");
    email = request.getParameter("email");
    exp = request.getParameter("exp");
    education = request.getParameter("education");
    conocimiento = request.getParameter("conocimiento");
    open = request.getParameter("open");
%>
    <hr>
    <h2>Nombre: <%=nombre%> <%=apellido%></h2>
    <table>
        <tr>
            <td>Cédula:</td>
            <td><%= cedula%></td>
        </tr>
        <tr>
            <td>Género:</td>
            <td><%= genero%></td>
        </tr>
        <tr>
            <td>Fecha de Nacimiento:</td>
            <td><%= fbirth%></td>
        </tr>
        <tr>
            <td>Teléfono:</td>
            <td><%= numero%></td>
        </tr>
        <tr>
            <td>Correo Electronico:</td>
            <td><%= email%></td>
        </tr>
    </table>
    <hr>
    <h1>Información Adicional</h1>
    <table>
        <tr>
            <td>Experiencia:</td>
            <td><%= exp%></td>
        </tr>
        <tr>
            <td>Educación:</td>
            <td><%= education%></td>
        </tr>
        <tr>
            <td>Conocimientos:</td>
            <td><%= conocimiento%></td>
        </tr>
    </table>
    <hr>
    <h2>¿Quién es <%= nombre%>?</h2>
    <p><%=open%></p>
    <hr>
</center>
</body>
</html>
