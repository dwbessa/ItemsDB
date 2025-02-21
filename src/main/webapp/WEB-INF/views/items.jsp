<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Item CRUD Operations</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .container { max-width: 800px; margin: 0 auto; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; }
        .form-group input { width: 100%; padding: 8px; margin-bottom: 10px; }
        .btn { padding: 10px 15px; background: #007bff; color: white; border: none; cursor: pointer; }
        .btn:hover { background: #0056b3; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 10px; border: 1px solid #ddd; text-align: left; }
        th { background-color: #f4f4f4; }
        .action-links a { margin-right: 10px; }
    </style>
</head>
<body>
<div class="container">
    <h2>Item Management</h2>

    <form:form action="/items" method="post" modelAttribute="item">
        <form:hidden path="id"/>
        <div class="form-group">
            <label>Name:</label>
            <form:input path="name" required="true"/>
        </div>
        <div class="form-group">
            <label>Description:</label>
            <form:input path="description"/>
        </div>
        <div class="form-group">
            <label>Price:</label>
            <form:input path="price" type="number" step="0.01" required="true"/>
        </div>
        <button type="submit" class="btn">Save Item</button>
    </form:form>

    <h3>Items List</h3>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${items}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.description}</td>
                <td>${item.price}</td>
                <td class="action-links">
                    <a href="/items/edit/${item.id}">Edit</a>
                    <a href="/items/delete/${item.id}" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
