<%@page import ="com.shopKart.dbHandler.DataFetcher"  %>
<%@page import ="java.util.List" %>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>/* Reset some default styles */
body, h1, h2, h3, p, ul, li {
  margin: 0;
  padding: 0;
}

/* Basic styling */
body {
  font-family: Arial, sans-serif;
  line-height: 1.5;
  background-color: #f5f5f5;
}

header {
  background-color: #5c6bc0; /* Blue color */
  color: #fff;
  padding: 20px;
}

nav ul {
  list-style-type: none;
}

nav ul li {
  display: inline;
  margin-right: 10px;
}

nav ul li a {
  color: #fff;
  text-decoration: none;
}

main {
  padding: 20px;
}

.products {
  display: flex;
  flex-wrap: wrap;
}

.product {
  width: 200px;
  padding: 20px;
  background-color: #fff;
  margin: 10px;
  text-align: center;
}

.product img {
  max-width: 100%;
  height: auto;
  margin-bottom: 10px;
}

footer {
  background-color: #9c27b0; /* Purple color */
  color: #fff;
  padding: 20px;
  text-align: center;
}

</style>
</head>
<body>
<header>
    <h1>ShopKart</h1>
     <% 
           
            List productsList = DataFetcher.fetchProductsInfo();
        %>
    
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Products</a></li>
        <li><a href="#" class ="view-cart">
        <i class="fa-light fa-cart-shopping"></i>
        <span>
        <a href = "cart.jsp">
        <button class ="add-to-cart">View Cart</button>
        </a>
        </span></a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
  </header>

  <main>
  <h2>Featured Products</h2>
   <%
   String[] prodArr2 =null;
       for(int i=0;i<productsList.size();i++){
      String[] prodArr=((String)productsList.get(i)).split(":");
      prodArr2 = prodArr;
                                
      %>
      <section class="product">
      
      
        <img src="prodImg/<%=prodArr[4]%>" alt="Product 1">
        <h2><%= prodArr[1]%></h2>
        <p><%=prodArr[2]%></p>
        <span class="price"><%= prodArr[3] %></span>
        <form method="post" action="add-to-cart">
            <input type = "hidden" name= "productId" value ="<%=
            Integer.parseInt(prodArr[0]) %>">
            <input type = "submit" value="Add to Cart">
        </form>
       
  
    </section>
  
  
  
    
    <%
    }
       %>
  </main>

  <footer>
    <p>&copy; 2023 E-Commerce Website. All rights reserved.</p>
  </footer>






</body>
</html>