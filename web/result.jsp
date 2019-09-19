<%--
  Created by IntelliJ IDEA.
  User: An Viet Hung
  Date: 9/19/2019
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<%
    float firstOperand = Float.parseFloat(request.getParameter("firstOperand"));
    float secondOperand = Float.parseFloat(request.getParameter("secondOperand"));
    char operator = request.getParameter("operator").charAt(0);
%>

<%!
    public static float calculator(float firstOperand, float secondOperand, char operator) {
        switch (operator){
            case '+':
                return firstOperand + secondOperand;
            case '-':
                return firstOperand - secondOperand;
            case '*':
                return firstOperand * secondOperand;
            case '/':
                if (secondOperand != 0){
                    return firstOperand / secondOperand;
                } else {
                    throw new RuntimeException("Can't divide by 0");
                }
            default:
                throw new RuntimeException("Invalid operator");
        }
    }
%>

    <h1>Result:</h1>
    <%
        try {
            float result = calculator(firstOperand,secondOperand,operator);
            out.print(firstOperand + " " + operator + " " + secondOperand + " = " + result);
        } catch (Exception e){
            out.print("Error: " + e.getMessage());
        }
    %>
</body>
</html>
