<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator2</title>
    </head>
    <body>
        <h1>Please complete the following information:</h1>
        <form id="form1" name="form1" method="POST" action="calc2">
            <p>
                Length
                <input type="number" name="length" form ="form1" min="0" step="0.1" value = "3.0" required autofocus>
            </p>
            <p>
                Width
                <input type="number" name="width" form ="form1" min="0" step="0.1" value = "4.0" required>
            </p>
            <input type="submit" value="Find Area of Rectangle">
        </form>
        <br>
        <h1>Here are your results:</h1> 
        <p>The area of the rectangle is: ${area}</p>
    </body>
</html>
