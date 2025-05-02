<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login en JSP</title>
</head>
<body>
    <h2>Iniciar sesión</h2>
    <form action="procesarLogin.jsp" method="POST">
        <label>Usuario:</label>
        <input type="text" name="usuario" required>
        <br>
        <label>Contraseña:</label>
        <input type="password" name="password" required>
        <br>
        <button type="submit">Ingresar</button>
    </form>
</body>
</html>
