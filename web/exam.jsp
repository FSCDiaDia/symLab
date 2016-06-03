<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Exam</title>
</head>
<body>
<f:view>
    <h1>${ExamController.Exam.name}</h1>
    <h2>Details</h2>
    <div>Id: ${ExamController.Exam.code}</div>
    <div>Price: ${ExamController.Exam.price}</div>
    <div>Description: ${ExamController.Exam.description}</div>
</f:view>
</body>
</html>