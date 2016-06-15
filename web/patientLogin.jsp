<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:patientpage>
    <jsp:attribute name="header">
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <f:view>
            <div class="jumbotron">
                <h1>Welcome ${patientController.patient.fullName}</h1>
                <img src="http://www.italinemo.it/grafica/foto_gruppo/anonima.png" align="right">
                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus id blandit nisi. Integer laoreet
                    mi in gravida iaculis. Maecenas ullamcorper dolor ut magna semper dapibus. Nunc commodo mauris
                    justo, nec pellentesque massa ultricies id. Donec dignissim, quam vel commodo commodo, erat elit
                    blandit nibh, sed lobortis quam nisl sed purus. Duis aliquam et magna id auctor. Duis posuere tortor
                    vel augue bibendum, id consectetur ante consequat. Ut cursus sed mi a sagittis. Aliquam lobortis
                    eleifend dolor, sed rutrum risus blandit congue. Morbi bibendum nulla quis blandit lacinia. Mauris
                    pharetra ligula eget nibh pulvinar, et malesuada sapien iaculis. Donec viverra volutpat pretium.
                    Morbi nunc turpis, mattis in massa et, fermentum rhoncus lorem. Quisque urna urna, tincidunt in
                    ipsum nec, bibendum sollicitudin nulla. Nulla tincidunt justo quis erat bibendum consequat. Duis
                    quis urna feugiat, tempus libero sit amet, auctor mi.

                    Nulla commodo mauris sem, sed pretium leo pellentesque auctor. Sed nibh lectus, elementum in viverra
                    vel, maximus ornare dolor. Aenean varius id nisi at sagittis. Nullam hendrerit lacus vitae tristique
                    tincidunt. Phasellus sed sagittis nulla, finibus varius nisl. Morbi felis mi, facilisis sed tellus
                    eget, scelerisque eleifend orci. Duis id mauris condimentum, pulvinar libero sit amet, laoreet
                    augue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam nec risus sed nunc finibus
                    aliquam lacinia id lacus. Ut non pellentesque ex. Morbi pulvinar, libero non ultricies blandit, ante
                    diam elementum justo, vitae bibendum leo risus sed ex. Fusce mattis mi tincidunt, faucibus tellus
                    vitae, consequat mi. Vivamus suscipit congue metus, eu pretium urna fringilla vitae.
                </div>
            </div>
        </f:view>
    </jsp:body>
</t:patientpage>
