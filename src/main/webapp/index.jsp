<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="your.package.name.Product"%>

<%
    // Create a product
    Product originalProduct = new Product("Original Product", "Original Category", 29.99);

    // Clone the original product
    Product clonedProduct = null;
    try {
        clonedProduct = originalProduct.clone();
        clonedProduct.setName("Cloned Product");
    } catch (CloneNotSupportedException e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
</head>
<body>
    <h1>Product Details</h1>
    <h2>Original Product</h2>
    <p>Name: <%= originalProduct.getName() %></p>
    <p>Category: <%= originalProduct.getCategory() %></p>
    <p>Price: <%= originalProduct.getPrice() %></p>

    <h2>Cloned Product</h2>
    <p>Name: <%= clonedProduct.getName() %></p>
    <p>Category: <%= clonedProduct.getCategory() %></p>
    <p>Price: <%= clonedProduct.getPrice() %></p>
</body>
</html>
