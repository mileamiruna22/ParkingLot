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
                    <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
                    <th>Select</th>
                    </c:if>
                    <th>Username</th>
                    <th>Email</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${users}">

                    <tr>
                        <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
                        <td>
                            <input type="checkbox" name="user_ids" value="${user.id}" />
                        </td>
                </c:if>
                        <td>${user.email}</td>
                        <td>${user.username}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
            <button type="submit" name="action" value="invoice" class="btn btn-success">Invoice</button>
            </c:if>
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
