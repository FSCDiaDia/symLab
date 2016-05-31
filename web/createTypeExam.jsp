<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>New TypeExam</title>
</head>
<body>
<f:view>
    <h:form>
        <div>Name: <h:inputText value="#{typeExamController.name}"
                                required="true"
                                requiredMessage="Name is mandatory"
                                id="name"/> <h:message for="name"/>
        </div>

        </div>
        <div>Price: <h:inputText value="#{typeExamController.price}"
                                 required="true"
                                 requiredMessage="Price is mandatory"
                                 converterMessage="Price must be a number"
                                 id="price"/> <h:message for="price"/>
        </div>
        <div>Description: <h:inputTextarea value="#{typeExamController.description}"
                                           required="false"
                                           cols="20"
                                           rows="5"/>

        </div>
        <div>
            <h:commandButton value="Submit" action="#{typeExamController.createTypeExam}"/>
        </div>

    </h:form>
</f:view>
</body>
</html>