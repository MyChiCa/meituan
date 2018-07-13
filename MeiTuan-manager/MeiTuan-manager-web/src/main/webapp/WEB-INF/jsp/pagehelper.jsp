<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<div class="message">
    共<i class="blue">${requestScope.pages.total}</i>条记录，当前显示第&nbsp;<i
        class="blue">${requestScope.pages.pageNum}/${requestScope.pages.pages}</i>&nbsp;页
</div>
<div style="text-align:center;">
    <ul class="pagination">
        <c:if test="${!requestScope.pages.isFirstPage}">
            <li><a href="javascript:queryAllPerson(${requestScope.pages.firstPage}, ${requestScope.pages.pageSize});">首页</a></li>
            <li><a href="javascript:queryAllPerson(${requestScope.pages.prePage}, ${requestScope.pages.pageSize});">上一页</a></li>
        </c:if>
        <c:forEach items="${requestScope.pages.navigatepageNums}" var="navigatepageNum">
        
            <c:if test="${navigatepageNum==requestScope.pages.pageNum}">
                <li class="active"><a href="javascript:queryAllPerson(${navigatepageNum}, ${requestScope.pages.pageSize});">${navigatepageNum}</a></li>
            </c:if>
            <c:if test="${navigatepageNum!=requestScope.pages.pageNum}">
                <li><a href="javascript:queryAllPerson(${navigatepageNum}, ${requestScope.pages.pageSize});">${navigatepageNum}</a></li>
            </c:if>
        </c:forEach>
        <c:if test="${!requestScope.pages.isLastPage}">
            <li><a href="javascript:queryAllPerson(${requestScope.pages.nextPage}, ${requestScope.pages.pageSize});">下一页</a></li>
            <li><a href="javascript:queryAllPerson(${requestScope.pages.lastPage}, ${requestScope.pages.pageSize});">最后一页</a></li>
        </c:if>
    </ul>
</div>
