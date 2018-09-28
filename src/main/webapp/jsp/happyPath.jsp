<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OMG SO EXCITED!!!</title>
    </head>
    <body>
        <h1>CAN'T WAIT</h1>
        <h2>Don't forget to bring the llamas<br/>
            'cause right now there is only /person<br/></h2>
        <a href="${pageContext.request.contextPath}/coolKids">>>Click Here<<</a>
        <h2>to see who else is coming</h2>
        <a href="${pageContext.request.contextPath}/rsvp">>>Here<<</a>
        <h2>to RSVP someone else</h2>
    </body>
</html>
