<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Patient</title>
</head>
<body>
<f:view>
    <h1>Patient's details</h1>
    <div>Id: ${patientController.patient.id}</div>
    <div>Name: ${patientController.patient.name}</div>
    <div>LastName: ${patientController.patient.lastname}</div>
</f:view>
</body>
</html>