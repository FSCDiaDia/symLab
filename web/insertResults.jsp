<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:doctorpage>
    <jsp:attribute name="header">
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Insert Results</h1>
        <f:view>
            <h:form>
                <div class="form-group">

                    <h:outputLabel for="patient">Patient</h:outputLabel>
                    <h:selectOneMenu value="#{resultController.patientId}"
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

                <%--<div class="form-group">--%>
                <%--<h:outputLabel for="exam">Patient's exams</h:outputLabel>--%>
                <%--<h:selectOneMenu value="#{resultController.examId}"--%>
                <%--required="true"--%>
                <%--requiredMessage="Exam is mandatory"--%>
                <%--styleClass="form-control"--%>
                <%--id="exam">--%>
                <%--<c:forEach var="item" items="#{resultController.exams}">--%>
                <%--<f:selectItem itemValue="#{item.id}" itemLabel="#{item.typeExam.name}"/>--%>
                <%--</c:forEach>--%>
                <%--</h:selectOneMenu>--%>
                <%--<h:message styleClass="help-block" for="patient"/>--%>
                <%--</div>--%>

                <div>
                    <h:commandButton value="Submit" styleClass="btn btn-primary"
                                     action="#{resultController.insertResults}"/>
                </div>

            </h:form>
        </f:view>
    </jsp:body>
</t:doctorpage>
