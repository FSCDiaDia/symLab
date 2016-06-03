<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>New Patient</title>
</head>
<body>
<f:view>
    <h:form>
        <div>Name: <h:inputText value="#{patientController.name}"
                                required="true"
                                requiredMessage="Name is mandatory"
                                id="name"/> <h:message for="name"/>
        </div>

        </div>
        <div>Lastname: <h:inputText value="#{patientController.lastname}"
                                    required="true"
                                    requiredMessage="lastname is mandatory"
                                    id="lastname"/> <h:message for="lastname"/>
        </div>

        <div>
            <h:commandButton value="Submit" action="#{patientController.createPatient}"/>
        </div>

    </h:form>
</f:view>
</body>
</html>