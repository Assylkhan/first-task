<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/includeI18n.jspf"%>
<%--<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>--%>
<%@attribute name="title" required="true" %>
<c:set var="locale"
       value="${not empty param.language ? param.language : not empty locale ? locale : pageContext.request.locale}"
       scope="session"/>

<html lang="${locale}">
<head>
    <link rel="stylesheet" href='<c:url value="/webjars/bootstrap/3.3.1/css/bootstrap.css"/>'>
    <script src='<c:url value="/webjars/bootstrap/3.3.1/js/bootstrap.js"/>'></script>
    <script src='<c:url value="/webjars/jquery/2.1.3/jquery.js"/>'></script>
    <%--<script src='<c:url value="/static/js/application.js"/>'></script>--%>

    <link rel="stylesheet" href="/static/css/main.css">
    <%--<link rel="icon" href='<c:url value="/static/image/logoTitle.ico"/>' type="image/x-icon">--%>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <title>${title}</title>
</head>
<body>
<div class="container-fluid">
    <header class="row">
        <span style="font-size: large; font-weight: bold">
            <fmt:message key="news.newsManagement"/>
        </span>
        <span class="pull-right">
            <form class="languageToggle pull-left"
                  action='<c:url value="/changeLocale.do"/>' method="post">
                <input type="hidden" name="language" value="en">
                <button class="btn btn-link" name="en" value="en" <%--${locale == 'en_US' || locale=='en' ? 'selected' : ''}--%>>
                    <fmt:message key="locale.english"/>
                </button>
            </form>
            <form class="languageToggle pull-left"
                  action='<c:url value="/changeLocale.do"/>' method="post">
                <input type="hidden" name="language" value="ru"/>
                <button class="btn btn-link" name="ru" value="ru" <%--${locale == 'ru_RU' || locale=='ru' ? 'selected' : ''}--%>>
                    <fmt:message key="locale.russian"/>
                </button>
            </form>
        </span>
    </header>

    <div class="row">
        <t:left-side-bar/>
        <div class="content col-md-9">
            <jsp:doBody/>
        </div>
    </div>

    <footer class="footer navbar-fixed-bottom">
        <div class="container-fluid" style="margin: 15px auto">
            <div class="horizontalCenter" align=center>
                <p style="font-weight: bold"><fmt:message key="footer.copyright"/></p>
            </div>
        </div>
    </footer>
</div>
</body>
</html>
