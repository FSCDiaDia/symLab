<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor</title>
</head>
<body>
<f:view>
    <h1>Doctor's details</h1>
    <div>Id: ${doctorController.doctor.id}</div>
    <div>Name: ${doctorController.doctor.name}</div>
    <div>LastName: ${doctorController.doctor.lastname}</div>
    <div>Specialization: ${doctorController.doctor.specialization}</div>

</f:view>
</body>
</html>