<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Exam</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
<f:view>
    <h1>Exam</h1>
    <h2>Details</h2>
    <dl class="dl-horizontal">
        <dt>Id</dt>
        <dd>${examController.exam.id}</dd>
        <dt>Patient</dt>
        <dd>${examController.exam.patient.fullName}</dd>
        <dt>Doctor</dt>
        <dd>${examController.exam.doctor.fullName}</dd>
        <dt>TypeExam</dt>
        <dd>${examController.exam.typeExam.name}</dd>
        <dt>Price</dt>
        <dd>${examController.exam.typeExam.price} €</dd>
        </f:view>
</body>
</html>