<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@include file="includeI18n.jspf"%>
<%@include file="paramsName.jspf"%>
<fmt:message key="news.news" var="title"/>
<t:genericPage title="${title}">
    <div class="jumbotron" style="border: solid 2px #a7a7a7; background:#fff;">

        <div class="row">
            <div class="row">
                <div class="col-md-2" style="color: #a7a7a7">${newsTitle}</div>
                <div class="col-md-8">
                    ${news.title}
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-md-2" style="color: #a7a7a7">${date}</div>
                <div class="col-md-8">
                    ${news.date}
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-md-2" style="color: #a7a7a7">${newsBrief}</div>
                <div class="col-md-8">
                    ${news.brief}
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-md-2" style="color: #a7a7a7">${newsContent}</div>
                <div class="col-md-8">
                    ${news.content}
                </div>
            </div>
        </div>
            <br/>
            <div class="row" >
                <div class="form-group" align=center>
                    <a href="/news.do?parameter=edit&id=${news.id}" class="btn btn-default horizontal-center">
                        <fmt:message key="news.edit"/>
                    </a>
                    <a href="/news.do?parameter=delete&id=${news.id}" class="btn btn-default horizontal-center">
                        <fmt:message key="news.delete"/>
                    </a>
                </div>
            </div>
        </html:form>
    </div>
</t:genericPage>
