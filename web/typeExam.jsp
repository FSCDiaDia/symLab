<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>TypeExam</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
    <f:view>
    <div class="jumbotron">
        <h1>${typeExamController.typeExam.name}</h1>
        <h2>Details</h2>
        <dl class="dl-horizontal">
            <dt>Id</dt>
            <dd>${typeExamController.typeExam.id}</dd>
            <dt>Price</dt>
            <dd>${typeExamController.typeExam.price} euro</dd>
            <dt>Description</dt>
            <dd>${typeExamController.typeExam.description}</dd>
            <dt>Requirements:</dt>
            <dd>
                <c:forEach var="requirement" items="${typeExamController.allReq}">
                    ${requirement.value}<br>
                </c:forEach>
            </dd>
            <dt>Indicators:</dt>
            <dd>
                <c:forEach var="indicator" items="${typeExamController.allInd}">
                    ${indicator.name}<br>
                </c:forEach>
            </dd>
        </dl>
    </div>
    </f:view>
</body>
</html>