<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RSVP to the BEST PARTY EVAR!</title>
    </head>
    <body>
        <h1>
            You ready?! <br/>
            Tell me who/what is coming?
        </h1>
        <hr/>
        <form class="form-horizontal" 
              role="form" method="POST" 
              action="${pageContext.request.contextPath}/rsvp">
            <div class="form-group">
                <label for="add-name" class="col-md-4 control-label">Yer Name:</label>
                <div class="col-md-8">
                  <input type="text" class="form-control" name="name" placeholder="Name"/>
                </div>
            </div>
            <div class="form-group">
                <label for="llamaNumber" class="col-md-4 control-label"># of Llamas you're bringing</label>
                <div class="col-md-8">
                    <input type="number" class="form-control" name="number" placeholder="Choose Number"/>
                </div>
            </div>
             <div class="form-group">
                <label for="radio" class="col-md-4 control-label">Yer coming right?</label>
                <div class="col-md-8">
                  <label class="radio-inline"><input type="radio" name="optradio" value="yes" checked>Yes</label>
                  <label class="radio-inline"><input type="radio" name="optradio" value="no">No</label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-4 col-md-8">
                    <input type="submit" class="btn btn-default" value="rsvp"/>
                </div>
            </div>
        </form>

    </body>
</html>
