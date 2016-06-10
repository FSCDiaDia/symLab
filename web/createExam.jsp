<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:adminpage>
    <jsp:attribute name="header">
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>

        <f:view>
            <h1>Create Exam</h1>

            <h:form>
                <div class="form-group">
                    <h:outputLabel for="type-exam">Type Exam</h:outputLabel>
                    <h:selectOneMenu value="#{examController.typeExamId}"
                                     required="true"
                                     requiredMessage="TypeExam is mandatory"
                                     styleClass="form-control"
                                     id="type-exam">
                        <c:forEach var="item" items="#{examController.typeExams}">
                            <f:selectItem itemValue="#{item.id}" itemLabel="#{item.name}"/>
                        </c:forEach>
                    </h:selectOneMenu>
                    <h:message styleClass="help-block" for="type-exam"/>
                </div>

                <div class="form-group">
                <h:outputLabel for="date">Date</h:outputLabel>
                <div class="row">
                    <div class='col-sm-6'>
                        <div class="form-group">
                            <div class='input-group date'>
                                <h:inputText value="#{examController.achievementDate}"
                                             required="true"
                                             requiredMessage="achievementDate is mandatory"
                                             converterMessage="achievementDate must be a date"
                                             styleClass="form-control"
                                             id="date">
                                    <f:convertDateTime pattern="yyyy-MM-dd" type="date"/>
                                </h:inputText>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                            </div>
                        </div>
                    </div>
                    <h:message styleClass="help-block" for="date"/>
                </div>

                <div class="form-group">
                    <h:outputLabel for="patient">Patient</h:outputLabel>
                    <h:selectOneMenu value="#{examController.patientId}"
                                     required="true"
                                     requiredMessage="Patient is mandatory"
                                     styleClass="form-control"
                                     id="patient">
                        <c:forEach var="item" items="#{examController.patients}">
                            <f:selectItem itemValue="#{item.id}" itemLabel="#{item.fullName}"/>
                        </c:forEach>
                    </h:selectOneMenu>
                    <h:message styleClass="help-block" for="patient"/>
                </div>

                <div class="form-group">
                    <h:outputLabel for="doctor">Doctor</h:outputLabel>
                    <h:selectOneMenu value="#{examController.doctorId}"
                                     required="true"
                                     requiredMessage="Doctor is mandatory"
                                     styleClass="form-control"
                                     id="doctor">
                        <c:forEach var="item" items="#{examController.doctors}">
                            <f:selectItem itemValue="#{item.id}" itemLabel="#{item.fullName}"/>
                        </c:forEach>
                    </h:selectOneMenu>
                    <h:message styleClass="help-block" for="doctor"/>
                </div>

                <div>
                    <h:commandButton value="Submit" styleClass="btn btn-primary" action="#{examController.createExam}"/>
                </div>

            </h:form>
        </f:view>

    </jsp:body>
</t:adminpage>