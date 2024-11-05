<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Factura</title>
</head>
<body>
    <h2>Formulario de Creación de Factura</h2>
    <form:form modelAttribute="invoice" method="POST">
        <label for="concept">Concepto:</label>
        <form:input path="concept" id="concept" required="true" /><br><br>

        <label for="amount">Cantidad:</label>
        <form:input path="amount" id="amount" type="number" step="0.01" required="true" /><br><br>

        <label for="retentionPercentage">Porcentaje de Retención:</label>
        <form:input path="retentionPercentage" id="retentionPercentage" type="number" step="0.01" required="true" /><br><br>

        <button type="submit">Crear Factura</button>
    </form:form>
</body>
</html>
