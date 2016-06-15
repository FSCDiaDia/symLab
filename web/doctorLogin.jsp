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
        <f:view>
            <div class="jumbotron">
            <h1>Welcome ${doctorController.doctor.fullName}</h1>
            <img src="https://pixabay.com/static/uploads/photo/2016/03/31/20/12/doctor-1295581_960_720.png"
                 align="right" width="200" height="200">
            <div>Giuro per Apollo medico e Asclepio e Igea e Panacea e per gli dèi tutti e per tutte le dee, chiamandoli
                a testimoni, che eseguirò, secondo le forze e il mio giudizio, questo giuramento e questo impegno
                scritto:

                di stimare il mio maestro di questa arte come mio padre e di vivere insieme a lui e di soccorrerlo se ha
                bisogno e che considererò i suoi figli come fratelli e insegnerò quest'arte, se essi desiderano
                apprenderla;

                di rendere partecipi dei precetti e degli insegnamenti orali e di ogni altra dottrina i miei figli e i
                figli del mio maestro e gli allievi legati da un contratto e vincolati dal giuramento del medico, ma
                nessun altro.

                Regolerò il tenore di vita per il bene dei malati secondo le mie forze e il mio giudizio, mi asterrò dal
                recar danno e offesa.

                Non somministrerò ad alcuno, neppure se richiesto, un farmaco mortale, né suggerirò un tale consiglio;
                similmente a nessuna donna io darò un medicinale abortivo.

                Con innocenza e purezza io custodirò la mia vita e la mia arte. Non opererò coloro che soffrono del male
                della pietra, ma mi rivolgerò a coloro che sono esperti di questa attività.

                In qualsiasi casa andrò, io vi entrerò per il sollievo dei malati, e mi asterrò da ogni offesa e danno
                volontario, e fra l'altro da ogni azione corruttrice sul corpo delle donne e degli uomini, liberi e
                schiavi.

                Ciò che io possa vedere o sentire durante il mio esercizio o anche fuori dell'esercizio sulla vita degli
                uomini, tacerò ciò che non è necessario sia divulgato, ritenendo come un segreto cose simili.

                E a me, dunque, che adempio un tale giuramento e non lo calpesto, sia concesso di godere della vita e
                dell'arte, onorato degli uomini tutti per sempre; mi accada il contrario se lo violo e se spergiuro".
            </div>
        </f:view>
    </jsp:body>
</t:doctorpage>
