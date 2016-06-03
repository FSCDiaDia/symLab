<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>New Doctor</title>
</head>
<body>
<f:view>
    <h:form>
        <div>Name: <h:inputText value="#{doctorController.name}"
                                required="true"
                                requiredMessage="Name is mandatory"
                                id="name"/> <h:message for="name"/>
        </div>

        </div>
        <div>Lastname: <h:inputText value="#{doctorController.lastname}"
                                    required="true"
                                    requiredMessage="lastname is mandatory"
                                    id="lastname"/> <h:message for="lastname"/>
        </div>

        <div>Specialization: <h:inputText value="#{doctorController.specialization}"
                                          required="true"
                                          requiredMessage="specialization is mandatory"
                                          id="specialization"/> <h:message for="specialization"/>
        </div>

        <div>
            <h:commandButton value="Submit" action="#{doctorController.createDoctor}"/>
        </div>

    </h:form>
</f:view>
</body>
</html>