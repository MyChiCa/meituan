<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContent.request.contextPath }/Userlist" method="post" id="loginForm"">
 <input type="submit" value="login" id="register">
</form>
<table>
<thead>
<tr>
                <th>电话号码</th>
                <th>性别</th>
                <th>时间</th>
            </tr>
              </thead>
              <tbody>
            <c:forEach var="a" items="${requestScope.list}">
                <tr>
                    <td>${a.telephone}</td> 
                    <td>${a.gender}</td>
                    <td>${a.registrationTime}</td>
                </tr>
            </c:forEach>
            	</tbody>
</thread>
  </table>       

</body>
</html>