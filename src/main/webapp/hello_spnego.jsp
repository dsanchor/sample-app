<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Ejemplo de autenticacion con SPNEGO contra AD</title>
</head>
<body>
Hola <%= request.getRemoteUser() %>
<br />
El principal es <%= request.getUserPrincipal() %>
</body>
</html>
