<%--
  Created by IntelliJ IDEA.
  User: An Viet Hung
  Date: 9/19/2019
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ứng dụng calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="result.jsp" method="post">
    <fieldset>
        <legend>Calculator</legend>
        <table>
            <tbody>
            <tr>
                <td>First operand</td>
                <td>
                    <input type="text" name="firstOperand"/>
                </td>
            </tr>
            <tr>
                <td>Operator</td>
                <td>
                    <select name="operator">
                        <option value="+">Addition</option>
                        <option value="-">Minus</option>
                        <option value="*">Multiply</option>
                        <option value="/">Division</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Second operand</td>
                <td>
                    <input type="text" name="secondOperand"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" name="Calculate"/>
                </td>
            </tr>
            </tbody>
        </table>
    </fieldset>
</form>
</body>
</html>
