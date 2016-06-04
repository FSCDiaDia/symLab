<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Patient</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
<f:view>
    <h1>Patient's details</h1>
    <dl class="dl-horizontal">
        <dt>Id:</dt>
        <dd> ${patientController.patient.id}</dd>
        <dt>Name:</dt>
        <dd>${patientController.patient.name}</dd>
        <dt>LastName:</dt>
        <dd>${patientController.patient.lastname}</dd>
    </dl>
</div>
</f:view>
</body>
</html>