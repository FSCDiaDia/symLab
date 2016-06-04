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
</head>
<body>
<f:view>
    <h1>Patient's details</h1>
    <div>Id: ${resultController.patient.id}</div>
    <div>Patient: ${resultController.patient.fullName}</div>
    <div>Exam: ${resultController.examId}</div>
    ###Manca il codice per mostrare i risultati
</f:view>
</body>
</html>