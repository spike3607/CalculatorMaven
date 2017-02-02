
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator1</title>
    </head>
    <body>
        <h1 style="text-align: center; font-weight: bolder; color: red;">Please complete the following information:</h1>
        <img src="http://images.tutorvista.com/cms/images/102/area-of-rectangle.png"  style="margin: auto" alt="Area of Rectangle"/>
        <form id="form1" name="form1" method="POST" action="calc1">
            <p style="text-align: center; font-weight: bold">
                Length
                <input type="number" name="length" form ="form1" min="0" step="0.1" value = "3.0" required autofocus>
            </p>
            <p style="text-align: center; font-weight: bold">
                Width
                <input type="number" name="width" form ="form1" min="0" step="0.1" value = "4.0" required>
            </p>
            <input type="submit" value="Find Area of Rectangle" style="margin: auto">
        </form>
    </body>
</html>
