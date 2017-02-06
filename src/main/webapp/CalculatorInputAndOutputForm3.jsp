<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator 3</title>
    </head>
    <body>
        <h1>Rectangle Calculator:</h1>
        <img src="http://images.tutorvista.com/cms/images/102/area-of-rectangle.png" alt="Area of Rectangle"/>
        <form id="rectform" name="rectform" method="POST" action="calc3?calctype=rectangle">
            <p>
                Length
                <input type="number" name="length" form ="rectform" min="0" step="0.1" value = "3.0" required autofocus>
            </p>
            <p>
                Width
                <input type="number" name="width" form ="rectform" min="0" step="0.1" value = "4.0" required>
            </p>
            <p>
                <input type="hidden" name="calctype" value="rectangle">
                <input type="submit" value="Find Area of Rectangle">
            </p>
        </form>
        <br>
        <h3>Results</h3>
        <p>The area of the rectangle is: ${rectangleArea}</p>
        <br>
        
        <h1>Circle Calculator:</h1>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Circle_Area.svg/220px-Circle_Area.svg.png" 
                alt="Area of Circle"/>
        <form id="circleform" name="circleform" method="POST" action="calc3?calctype=circle">
            <p>
                Radius
                <input type="number" name="radius" form ="circleform" min="0" step="0.1" value = "3.0" required autofocus>
            </p>
            <input type="submit" value="Find Area of Circle">
        </form>
        <br>
        <h3>Results</h3>
        <p>The area of the circle is: ${circleArea}</p>
        <br>
        <h1>Hypotenuse Calculator:</h1>
        <img src="http://www.miniwebtool.com/s/i/pythagorean-theorem.png" alt="Hypotenuse of Triangle"/>
        <form id="triangleform" name="triangleform" method="POST" action="calc3?calctype=triangle">
            <p>
                A
                <input type="number" name="aTriangle" form ="triangleform" min="0" step="0.1" value = "3.0" required>
            </p>
            <p>
                B
                <input type="number" name="bTriangle" form ="triangleform" min="0" step="0.1" value = "4.0" required>
            </p>
            <input type="submit" value="Find Hypotenuse of Triangle">
        </form>
        <br>
        <h3>Results</h3>
        <p>The hypotenuse of the triangle is: ${triangleHyp}</p>
        <br>
    </body>
</html>
