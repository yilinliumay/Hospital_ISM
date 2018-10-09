<%--
  Created by IntelliJ IDEA.
  User: mayliu
  Date: 2018/4/3
  Time: 上午11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'update.jsp' starting page</title>

</head>

<body>
<h1><font color="red">Update User</font></h1>

<s:form action="updateUser">
    <table>
        <tr>
            <td>
                <s:hidden name="user.id" value="%{user.id}"></s:hidden>
            </td>
        </tr>

        <tr>
            <td>
                <s:textfield name="user.firstName" value="%{user.firstName}" label="First Name"></s:textfield>
            </td>
        </tr>

        <tr>
            <td>
                <s:textfield name="user.lastName" value="%{user.lastName}" label="Last Name"></s:textfield>
            </td>
        </tr>

        <tr>
            <td>
                <s:textfield name="user.age" value="%{user.age}" label="Age"></s:textfield>
            </td>
        </tr>

        <tr>
            <td>
                <s:submit></s:submit>
            </td>
        </tr>
    </table>
</s:form>

</body>
</html>
