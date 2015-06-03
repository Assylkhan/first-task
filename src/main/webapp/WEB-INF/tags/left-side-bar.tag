<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/includeI18n.jspf"%>
<div class="col-md-3">
    <div class="well">
        <h2 align=center class="" style="margin: 2px -20px 10px -10px; background:#ff3664;">
            <fmt:message key="news.news"/>
        </h2>
        <div class="well" style="background: #fff">
            <p>
                <span class="glyphicon glyphicon-cog"></span>
                <a href="<c:url value='/news.do?parameter=list'/> ">
                    <fmt:message key="news.newsList"/>
                </a>
            </p>
            <p>
                <span class="glyphicon glyphicon-cog"></span>
                <a href="<c:url value='/news.do?parameter=add'/> ">
                    <fmt:message key="news.addNews"/>
                </a>
            </p>
        </div>
    </div>
</div>