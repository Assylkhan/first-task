<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/includeI18n.jspf" %>
<fmt:message var="title" key="welcome.welcomeToSite"/>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%--<bean:message key="welcome.welcomeToSite" name="title"/>--%>
<%--
<t:genericPage title="${title}">
    <h3>${title}</h3>
    <p><a href="<c:url value='/newsList'/>">News list</a></p>
</t:genericPage>
--%>
<html>
<head>
    <title>index</title>
</head>
<body>
    <c:redirect url="/news.do?parameter=list"/>
</body>
</html>
