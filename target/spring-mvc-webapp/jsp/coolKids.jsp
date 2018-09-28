<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Cool Kids...</title>
    </head>
    <body>
        <h2>There are () people coming <br/>
        with () llamas total</h2>
        <a href="${pageContext.request.contextPath}/rsvp">>>RSVP Someone Else<<</a>
        <h2>The people coming:</h2>
        <table></table>
    </body>
</html>
