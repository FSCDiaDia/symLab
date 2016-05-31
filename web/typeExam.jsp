<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>TypeExam</title>
</head>
<body>
<f:view>
    <h1>${typeExamController.typeExam.name}</h1>
    <h2>Details</h2>
    <div>Id: ${typeExamController.typeExam.code}</div>
    <div>Price: ${typeExamController.typeExam.price}</div>
    <div>Description: ${typeExamController.typeExam.description}</div>
</f:view>
</body>
</html>