<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Edit Car">
    <h1>Edit Car</h1>

    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">
       <div class="row">
        <div class="col-md-6 mb-3">
            <label for="license_plate" class="form-label">License Plate</label>
            <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder=" " value="${car.licensePlate}"  required>
            <div class="invalid-feedback">License Plate is required.</div>
        </div>

        <div class="col-md-6 mb-3">
            <label for="parking_spot" class="form-label">Parking Spot</label>
            <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder=" " value="${car.parkingSpot}" required>
            <div class="invalid-feedback">Parking Spot is required.</div>
        </div>

        <div class="col-md-6 mb-3">
            <label for="owner_id" class="form-label">Owner</label>
            <select class="form-select" id="owner_id" name="owner_id" required>
                <option value="">Choose...</option>
                <c:forEach var="user" items="${users}">
                    <option value="${user.id}" ${car.ownerName eq user.username ? 'selected' : ''}>${user.username}</option>
                </c:forEach>
            </select>
            <div class="invalid-feedback">Please select an owner.</div>
        </div>

           <hr class="mb-4">
           <input type="hidden" name="car_id" value="${car.id}"/>
       </div>
        <button type="submit" class="btn btn-primary btn-lg">Save</button>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/scripts/form-validation.js"></script>
</t:pageTemplate>
