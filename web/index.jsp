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
            <div class="jumbotron">
                <h1>Benvenuti su SymLab</h1>
                <p>...</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
            </div>
            <a href="admin.jsp">Finto login Amministratore</a>
            <a href="admin.jsp">Finto login Paziente</a>
            <a href="admin.jsp">Finto login Dottore</a>
        </f:view>
    </jsp:body>
</t:genericpage>