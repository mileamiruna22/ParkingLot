<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add User">
    <h1>Add User</h1>

    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" required>
            <div class="invalid-feedback">Username is required.</div>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="text" class="form-control" id="email" name="email" required>
            <div class="invalid-feedback">Email is required.</div>
        </div>


        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="text" class="form-control" id="password" name="password" required>
            <div class="invalid-feedback">Password is required.</div>
        </div>

        <div class="mb-3">
            <label for="user_groups" class="form-label">Groups</label>
            <select class="form-select" id="user_groups" name="user_groups" multiple>
                <c:forEach var="user_groups" items="${userGroups}">
                    <option value="${user_groups}">${user_groups}</option>
                </c:forEach>
            </select>

        </div>

        <button type="submit" class="btn btn-primary btn-lg">Save</button>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/scripts/form-validation.js"></script>
</t:pageTemplate>
