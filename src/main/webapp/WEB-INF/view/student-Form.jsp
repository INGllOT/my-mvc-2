<%--
  Created by IntelliJ IDEA.
  User: wojciechinglot
  Date: 05/07/2022
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student registration form</title>
</head>
<body>

<form:form action="processForm" modelAttribute="student">

    First name: <form:input path="firstName"/>
    <br><br>
    Second name: <form:input path="lastName"/>
    <br><br>
    Country :
    <form:select path="country">

        <form:options items="${theCountryOptions}"/>

    </form:select>

    <br><br>

    Favourite language:

    Java <form:radiobutton path="favouriteLanguage" value="Java" />
    PHP <form:radiobutton path="favouriteLanguage" value="PHP" />
    Python <form:radiobutton path="favouriteLanguage" value="Python" />
    C++ <form:radiobutton path="favouriteLanguage" value="C++" />
    
    <br><br>
    
    Operating Systems:
    
    Linux <form:checkbox path="operatingSystem" value="Linux"/>
    MacOS <form:checkbox path="operatingSystem" value="macOs"/>
    Windows <form:checkbox path="operatingSystem" value="Windows"/>


    <br><br>


    <input type="submit" value="Submit" />

</form:form>


</body>
</html>
