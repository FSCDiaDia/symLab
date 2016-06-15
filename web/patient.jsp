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
            <div class="jumbotron">
                <h1>Patient's details</h1>
                <dl class="dl-horizontal">
                    <dt>Id:</dt>
                    <dd> ${patientController.patient.id}</dd>
                    <dt>Name:</dt>
                    <dd>${patientController.patient.name}</dd>
                    <dt>LastName:</dt>
                    <dd>${patientController.patient.lastname}</dd>
                    <dt>Username:</dt>
                    <dd>${patientController.patient.username}</dd>
                    <dt>Password:</dt>
                    <dd>${patientController.patient.password}</dd>

                </dl>
            </div>
        </f:view>
    </jsp:body>
</t:adminpage>
