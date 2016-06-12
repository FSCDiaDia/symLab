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
                <h1>Contacts:</h1>
                <br><strong>Mailing Address:</strong>

                <br>SYMlab
                79 Via della Vasca Navale
                Roma Tre University
                Rome, Latium
                Italy</br>

                <br><strong>Phone:</strong>

                607-255-1234</br>

                <br><strong>Fax:</strong>

                607-234-7654</br>

                <br><strong>Email:</strong>

                contact@symlab.edu</br>
                </p>
            </div>
        </f:view>
    </jsp:body>
</t:genericpage>
