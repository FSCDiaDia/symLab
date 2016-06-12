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
                    <h:outputLabel for="requirement">Requirements:</h:outputLabel>
                    <h:selectManyCheckbox value="#{typeExamController.requirements}"
                                          required="true"
                                          requiredMessage="Requirements are mandatory"
                                          styleClass="form-control"
                                          id="requirement">
                        <f:selectItem itemValue="Pregnancy" itemLabel="Pregnancy"/>
                        <f:selectItem itemValue="Without food" itemLabel="Without food from 12 hours"/>
                        <f:selectItem itemValue="Tattoos" itemLabel="Recent tattoos"/>
                        <f:selectItem itemValue="Travel" itemLabel="Travel in a risk area"/>
                        <f:selectItem itemValue="Medicinal"
                                      itemLabel="Recently used medicinals"/>
                        <f:selectItem itemValue="Alcoholics" itemLabel="Recently used alcoholics"/>
                    </h:selectManyCheckbox>
                </div>
                <div>
                    <h:commandButton value="Submit" action="#{typeExamController.createTypeExam}"
                                     styleClass="btn btn-primary"/>
                </div>

            </h:form>
        </f:view>
    </jsp:body>
</t:adminpage>
