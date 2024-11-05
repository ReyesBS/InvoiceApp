<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resumen de la Factura</title>
</head>
<body>
    <h2>Resumen de la Factura</h2>

    <p><strong>Concepto:</strong> ${invoice.concept}</p>
    <p><strong>Cantidad:</strong> ${invoice.amount}</p>
    <p><strong>Porcentaje de Retención:</strong> ${invoice.retentionPercentage}%</p>
    <p><strong>Retención Aplicada:</strong> ${retencion}</p>
    <p><strong>Total a Pagar:</strong> ${total}</p>

    <a href="/invoice">Crear otra factura</a>
</body>
</html>
