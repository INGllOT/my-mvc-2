<%--
  Created by IntelliJ IDEA.
  User: wojciechinglot
  Date: 05/07/2022
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<html>
<head>
    <title>Customer Registration Form</title>
    <style>
        .error {color: aquamarine}
    </style>

</head>
<body>

<i> (*) means required </i>

    <form:form action="processForm" modelAttribute="customer">

        First name: <form:input path="firstName"/>

        <br><br>

        Second name(*): <form:input path="lastName" />
        <form:errors path="lastName" cssClass="error" />
        <br><br>

        Free passes: <form:input path="freePasses" />
        <form:errors path="freePasses" cssClass="error" />
        <br><br>

        PostalCode: <form:input path="postalCode" />
        <form:errors path="postalCode" cssClass="error" />
        <br><br>

        PostalCode: <form:input path="courseCode" />
        <form:errors path="courseCode" cssClass="error" />

        <br><br>

        <input type="submit" value="Submit">
    </form:form>

</body>
</html>
