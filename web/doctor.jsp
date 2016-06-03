<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
    <f:view>
        <h1>Doctor's details</h1>
        <dl class="dl-horizontal">
            <dt>Id</dt>
            <dd>${doctorController.doctor.id}</dd>
            <dt>Name</dt>
            <dd>${doctorController.doctor.name}</dd>
            <dt>Last Name</dt>
            <dd>${doctorController.doctor.lastname}</dd>
            <dt>Specialization</dt>
            <dd>${doctorController.doctor.specialization}</dd>
        </dl>
    </f:view>
</div>
</body>
</html>