<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Users">
    <h1>Users</h1>
    <div class="container text-center">
        <form method="POST" action="${pageContext.request.contextPath}/Users">
            <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
                <a href="${pageContext.request.contextPath}/AddUser" class="btn btn-primary btn-lg">Add User</a>
            </c:if>

            <table class="table">
                <thead>
                <tr>
                    <th>Select</th>
                    <th>Email</th>
                    <th>Username</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>
                            <input type="checkbox" name="user_ids" value="${user.id}" />
                        </td>
                        <td>${user.email}</td>
                        <td>${user.username}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <button type="submit" name="action" value="invoice" class="btn btn-success">Invoice</button>
        </form>

        <c:if test="${not empty invoices}">
            <h2>Invoices</h2>
            <ul>
                <c:forEach var="invoice" items="${invoices}">
                    <li>${invoice.username} (${invoice.email})</li>
                </c:forEach>
            </ul>
        </c:if>
    </div>
</t:pageTemplate>
