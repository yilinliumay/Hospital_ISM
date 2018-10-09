<%--
  Created by IntelliJ IDEA.
  User: mayliu
  Date: 2018/4/3
  Time: 上午11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'list.jsp' starting page</title>
    <script type="text/javascript">
        function del(){
            if(confirm("Are you sure?")){
                return true;
            }
            return false;
        }
    </script>
</head>

<body>
<h1><font color="red">Users List</font></h1>
<s:a href="/ssh2/index.jsp"><<--</s:a>
<table border="1" width="80%" align="center">
    <tr>
        <th>序号</th>
        <th>姓</th>
        <th>名</th>
        <th>年龄</th>
        <th>删除</th>
        <th>更新</th>
    </tr>

    <s:iterator value="#request.list" id="us">
        <tr>
            <td>
                <s:property value="#us.id"/>
            </td>
            <td>
                <s:property value="#us.firstName"/>
            </td>
            <td>
                <s:property value="#us.lastName"/>
            </td>
            <td>
                <s:property value="#us.age"/>
            </td>
            <td align="center">
                <s:a href="deleteUser.action?user.id=%{#us.id}" onclick="return del()">Delete</s:a>
            </td>
            <td align="center">
                <s:a href="updatePUser.action?user.id=%{#us.id}">Update</s:a>
            </td>
        </tr>
    </s:iterator>
</table>

</body>
</html>