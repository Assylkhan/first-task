<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ taglib prefix="st" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@include file="includeI18n.jspf" %>
<%@include file="paramsName.jspf" %>
<t:genericPage title="${addNews}">
    <%--method="post"--%>
    <div class="jumbotron" style="border: solid 2px #eaeaea; background:#fff;">
        <html:form action="/news.do?parameter=save${param.parameter == 'edit' ? '&id='+=news.id : ''}">
            <%@include file="newsParams.jspf" %>
            <br/>
            <div class="row">
                <div class="form-group" align=center>
                    <html:submit styleClass="btn btn-default horizontal-center">
                        <fmt:message key="news.save"/>
                    </html:submit>
                    <a href="/news.do?parameter=list" class="btn btn-default horizontal-center">
                        <fmt:message key="news.cancel"/>
                    </a>
                </div>
            </div>
        </html:form>
    </div>
</t:genericPage>
