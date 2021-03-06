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
        <h1>Create Type Exam</h1>
        <f:view>
            <h:form>
                <div class="form-group">
                    <h:outputLabel for="name">Name</h:outputLabel>
                    <h:inputText value="#{typeExamController.name}"
                                 required="true"
                                 requiredMessage="Name is mandatory"
                                 styleClass="form-control"
                                 id="name"/> <h:message for="name"/>
                </div>
                <div class="form-group">
                    <h:outputLabel for="price">Price</h:outputLabel>
                    <h:inputText value="#{typeExamController.price}"
                                 required="true"
                                 requiredMessage="Price is mandatory"
                                 converterMessage="Price must be a number"
                                 styleClass="form-control"
                                 id="price"/> <h:message for="price"/>
                </div>
                <div class="form-group">
                    <h:outputLabel for="description">Description</h:outputLabel>
                    <h:inputTextarea value="#{typeExamController.description}"
                                     required="false"
                                     cols="20"
                                     rows="5"
                                     styleClass="form-control"
                                     id="description"/>
                </div>

                <div class="form-group">
                    <h:outputLabel for="requirements">Requirements (separated by newline)</h:outputLabel>
                    <h:inputTextarea value="#{typeExamController.requirements}"
                                     required="false"
                                     cols="20"
                                     rows="5"
                                     styleClass="form-control"
                                     id="requirements"/>

                </div>

                <div class="form-group">
                    <h:outputLabel for="indicators">Indicators (separated by newline)</h:outputLabel>
                    <h:inputTextarea value="#{typeExamController.indicators}"
                                     required="false"
                                     cols="20"
                                     rows="5"
                                     styleClass="form-control"
                                     id="indicators"/>

                </div>
                <div>
                    <h:commandButton value="Submit" action="#{typeExamController.createTypeExam}"
                                     styleClass="btn btn-primary"/>
                </div>

            </h:form>
        </f:view>
    </jsp:body>
</t:adminpage>
