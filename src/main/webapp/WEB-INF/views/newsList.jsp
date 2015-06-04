<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@include file="includeI18n.jspf" %>
<fmt:message key="news.newsList" var="title"/>
<t:genericPage title="${title}">
    <div class="jumbotron" style="border: solid 2px #eaeaea; background:#fff;">
        <c:forEach items="${newsList}" var="news">
            <div class="row" style="margin-bottom: 20px;">
                <p>
                    <span style="font-weight: bold">${news.title}</span>
                    <span class="pull-right"
                          style="font-style: italic">
                            ${news.date}
                    </span>
                </p>

                <p style="font-size: 12px">
                    ${news.brief}
                </p>

                <p>

                <div class="pull-right action-group">
                    <html:link href="/newsPages.do?parameter=view&id=${news.id}">
                        <fmt:message key="news.view"/>
                    </html:link>
                    <html:link href="/newsPages.do?parameter=edit&id=${news.id}">
                        <fmt:message key="news.edit"/>
                    </html:link>
                    <input type="checkbox" class="checkbox" id="${news.id}">
                </div>
                </p>
            </div>
        </c:forEach>

        <%--the below div for i18-zed alert --%>
        <div id="notSelected" style="display: none;">
            <fmt:message key="news.delete.notSelected"/>
        </div>

        <script>
            function deleteNews() {
//                confirm($("#notSelected").val());

                if ($(".checkbox").size() == 0) {
                    return;
                }
                var newsIdList = "";
                var anyChecked = false;
                $(".checkbox").each(function(index, obj) {
                    if ($(obj).is(':checked')) {
                        anyChecked = true;
                        newsIdList += $(obj).attr("id") + ",";
                    }
//                    newsIdList = newsIdList.substring(0, newsIdList.size - 1);
                });
                if (!anyChecked){
                    alert($("#notSelected").html());
                    return;
                }
                $("#newsIdList").val(newsIdList);
                $("#deleteForm").submit();
            }
        </script>
        <br/><br/>

        <div class="row">
            <div class="pull-right" style="margin-right: 10px">
                <button id="delete" class="btn btn-default" onclick="deleteNews();">
                    <fmt:message key="news.delete"/>
                </button>
                <form action="/newsOperations.do?parameter=delete" method="post" id="deleteForm">
                    <input type="hidden" name="newsIdList" id="newsIdList"/>
                </form>
            </div>
        </div>
    </div>
</t:genericPage>
