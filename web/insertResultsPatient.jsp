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
        <div class = "jumbotron">
        <h1>Insert Results</h1>
        <f:view>
            <h:form>
                <div class="form-group">
                    <h:outputLabel for="exam">Patient's exams</h:outputLabel>
                    <h:selectOneMenu value="#{resultController.typeExamId}"
                                     required="true"
                                     requiredMessage="Exam is mandatory"
                                     styleClass="form-control"
                                     id="exam">
                        <c:forEach var="item" items="#{examController.patientExams}">
                            <f:selectItem itemValue="#{item.typeExam.id}" itemLabel="#{item.typeExam.name}"/>
                        </c:forEach>
                    </h:selectOneMenu>
                </div>

                <div>
                    <h:commandButton value="Submit" styleClass="btn btn-primary"
                                     action="#{resultController.examResults}"/>
                </div>
                </div>
            </h:form>
        </f:view>
    </jsp:body>
</t:doctorpage>
