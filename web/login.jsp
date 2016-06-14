<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="header">
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <f:view>
            <div class="row">
                <div class="col-sm-6 col-md-4 col-md-offset-4">

                    <div class="account-wall">
                        <h1 class="text-center login-title">Login to SymLab</h1>
                        <h:form styleClass="form-signin">
                            <h:inputText value="#{loginController.username}"
                                         required="true"
                                         requiredMessage="username is mandatory"
                                         styleClass="form-control"
                                         id="username"/> <h:message for="username"/>
                            <h:inputSecret value="#{loginController.password}"
                                           required="true"
                                           requiredMessage="password is mandatory"
                                           styleClass="form-control"
                                           id="password"/> <h:message for="password"/>
                            <h:commandButton styleClass="btn btn-lg btn-primary btn-block"
                                             action="#{loginController.loginUser}">
                            </h:commandButton>
                            <label class="checkbox pull-left">
                                <input type="checkbox" value="remember-me">
                                Remember me
                            </label>
                        </h:form>
                    </div>
                </div>
            </div>
        </f:view>
    </jsp:body>
</t:genericpage>