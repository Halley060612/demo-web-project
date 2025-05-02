<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalTime" %>
<!DOCTYPE html>
<html>
<head>
    <title>Página JSP de Ejemplo</title>
</head>
<body>
    <h1>Bienvenido a mi página JSP</h1>

    <% 
        // Obtener la hora actual
        LocalTime horaActual = LocalTime.now();
        String mensaje;

        if (horaActual.getHour() < 12) {
            mensaje = "¡Buenos días!";
        } else if (horaActual.getHour() < 18) {
            mensaje = "¡Buenas tardes!";
        } else {
            mensaje = "¡Buenas noches!";
        }
    %>

    <p><%= mensaje %></p>

    <form action="saludo.jsp" method="POST">
        <label>Ingresa tu nombre:</label>
        <input type="text" name="nombre">
        <button type="submit">Enviar</button>
    </form>

    <% 
        String nombre = request.getParameter("nombre");
        if (nombre != null && !nombre.trim().isEmpty()) {
    %>
        <h2>Hola, <%= nombre %>! Espero que tengas un gran día.</h2>
    <% } %>
</body>
</html>
