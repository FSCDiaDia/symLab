<%--
  Created by IntelliJ IDEA.
  User: serena
  Date: 04/06/16
  Time: 11.14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Results:</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
<f:view>
    <h1>Patient's details</h1>

    <h2>Personal</h2>
    <dl class="dl-horizontal">
        <dt>Id</dt>
        <dd> ${resultController.patient.id}</dd>
        <dt>Patient</dt>
        <dd>${resultController.patient.fullName}</dd>
    </dl>
    <dl class="dl-horizontal">
        <h2>Exams</h2>
        <dt>Exam:</dt>
        <dd>${resultController.examId}</dd>
    ###Manca il codice per mostrare i risultati
    </dl>
</f:view>
</body>
</html>