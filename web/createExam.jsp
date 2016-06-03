<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>New Exam</title>
</head>
<body>
<f:view>
    <h:form>
        <div>TypeExam: <h:inputText value="#{ExamController.typeExam.name}"
                                    required="true"
                                    requiredMessage="typeExam is mandatory"
                                    id="typeExam"/> <h:message for="typeExam"/>
        </div>

        <div>achievementDate: <h:inputText value="#{ExamController.achievementDate}"
                                           required="true"
                                           requiredMessage="achievementDate is mandatory"
                                           converterMessage="achievementDate must be a date"
                                           id="date"/> <h:message for="date"/>
        </div>
        <div>PatientName: <h:inputText value="#{ExamController.patient.name}"
                                       required="true"/>

        </div>
        <div>PatientLastName: <h:inputText value="#{ExamController.patient.lastname}"
                                           required="true"/>

        </div>
        <div>DoctorName: <h:inputText value="#{ExamController.doctor.name}"
                                      required="true"/>
        </div>
        <div>DoctorLast: <h:inputText value="#{ExamController.doctor.lastname}"
                                      required="true"/>

        </div>
        <div>
            <h:commandButton value="Submit" action="#{ExamController.createExam}"/>
        </div>

    </h:form>
</f:view>
</body>
</html>