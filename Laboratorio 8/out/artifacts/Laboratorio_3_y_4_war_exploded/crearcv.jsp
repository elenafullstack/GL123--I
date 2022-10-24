<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear CV</title>
    <link rel="stylesheet" href="css/style.css">
</head>
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
    <hr>
    <center>
    <h1>Crear CV</h1>
        <hr>
    <form action="form.jsp" method="POST">
        <h3>Datos generales</h3>
        <label for="nombre">Nombre:</label>
        <input type="text" placeholder="Dolores" id="nombre" name="nombre" required>
        <label for="apellido">Apellido:</label>
        <input type="text" placeholder="Delano" id="apellido" name="apellido" required>
        <br><br>
        <label for="cedula">Cedula:</label>
        <input type="text" id="cedula" placeholder="0-000-000" name="cedula" required>
        <label for="genero">Genero:</label>
        <select name="genero" id="genero">
            <option value="Hombre">Hombre</option>
            <option value="Mujer">Mujer</option>
            <option value="Helicopeto">Helicoptero</option>
            <option value="Nave Espacial">Nave Espacial</option>
            <option value="Excavadora Industrial">Excavadora Industrial</option>
            <option value="Misil Kh-101">Misil Kh-101</option>
            <option value="Otros">Otro</option>
        </select>
        <br><br>
        <label for="fbirth">Fecha de nacimiento:</label>
        <input type="date" id="fbirth" name="fbirth" required>
        <br><br>
        <label for="numero">Numero de celular:</label>
        <input type="number" required pattern="[6][0-9]{7}" placeholder="600-0000" id="numero" name="numero">
        <label for="email">Correo electronico:</label>
        <input type="email"  id="email"  placeholder="Dolores.Del@gmail.com"name="email" required>
        <br><br>
        <hr>
        <h3>Información adicional</h3>
        <p><label for="exp">Experiencia laboral</label></p>
        <textarea name="exp" id="exp" placeholder="Que has hecho por tu vida?" cols="30" rows="10" required></textarea>
        <br>
        <p><label for="educacion">Educación</label></p>
        <textarea name="education" id="educacion" placeholder="En donde estudias o estudiaste" cols="30" rows="10" required></textarea>
        <br>
        <p><label for="conocimiento">Conocimientos</label></p>
        <textarea name="conocimiento" id="conocimiento" placeholder="que sabes hacer?" cols="30" rows="10" required></textarea>
        <br>
        <p><label for="open">Hablanos un poco de ti</label></p>
        <textarea name="open" id="open" placeholder="Expresate" cols="30" rows="10" required></textarea>
        <br>
        <br>
        acepto los terminos y condiciones
        <br>
        <br>
        <input type="submit" value= "Crear CV">´
    </form>
    </center>
</body>
</html>