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
        <div class="jumbotron">
            <h1>Doctor's details</h1>
            <dl class="dl-horizontal">
                <dt>Id</dt>
                <dd>${doctorController.doctor.id}</dd>
                <dt>Name</dt>
                <dd>${doctorController.doctor.name}</dd>
                <dt>Last Name</dt>
                <dd>${doctorController.doctor.lastname}</dd>
                <dt>Specialty</dt>
                <dd>${doctorController.doctor.specialization}</dd>
                <dt>Username:</dt>
                <dd>${doctorController.doctor.username}</dd>
                <dt>Password:</dt>
                <dd>${doctorController.doctor.password}</dd>

            </dl>
        </div>
    </f:view>
</div>
</body>
</html>