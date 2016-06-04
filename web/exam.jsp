<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Exam</title>
</head>
<body>
<f:view>
    <h1>${examController.exam.name}</h1>
    <h2>Details</h2>
    <div>Id: ${examController.exam.id}</div>
    <div>Patient: ${examController.exam.patient.fullname}</div>
    <div>Doctor: ${examController.exam.doctor.fullname}</div>
    <div>TypeExam: ${examController.exam.typeExam.name}</div>
    <div>Price: ${examController.exam.typeExam.price}</div>
</f:view>
</body>
</html>