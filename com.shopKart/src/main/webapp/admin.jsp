<%@page import ="com.shopKart.dbHandler.DataFetcher"  %>
<%@page import ="java.util.List" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
/* CSS code for styling the panel and buttons */
.panel {
  background-color: #f2f2f2;
  padding: 10px;
  margin-bottom: 20px;
}

.content-container {
  display: flex;
  justify-content: space-between;
  margin-bottom: 10px;
}

button {
  background-color: #4CAF50;
  color: white;
  border: none;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin-right: 10px;
  cursor: pointer;
}

button.active {
  background-color: #3e8e41;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

th {
  background-color: #4CAF50;
  color: white;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

.form-group {
  margin-bottom: 10px;
}

label {
  display: block;
  font-weight: bold;
}

input[type="text"] {
  width: 100%;
  padding: 8px;
  border: 1px solid #ccc;
}

button[type="submit"] {
  background-color: #4CAF50;
  color: white;
  border: none;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer;
}

</style>
</head>
    <body>
        <% 
            List userList = DataFetcher.fetchUsersInfo();
            List productsList = DataFetcher.fetchProductsInfo();
        %>
    
    
    
    
    
        <div class ="panel">
            <div class = "content-container">
                <button class= "active" data-tab ="tab1">View Customer info</button>
                <button  data-tab ="tab2">View Product info</button>
                <button  data-tab ="tab3">Add new product</button>
            </div>
            <div class ="content-container">
                <div class = "tab actice" id ="tab1">
                    <table border>
                        <thead>
                            <tr>
                                <th>Username</th>
                                <th>EMail</th>
                                <th>Gender</th>
                                <th>Address</th>
                            </tr>
                        
                        </thead>
                        <tbody>
                            <%
                                for(int i=0;i<userList.size();i++){
                                	String[] custArr=((String)userList.get(i)).split(":");
                                
                            %>
                        <tr>
                            <td> <%= custArr[0] %></td>
                            <td> <%= custArr[1] %></td>  
                            <td> <%= custArr[2] %></td>
                            <td> <%= custArr[3] %></td>
                       </tr>
                       <%
                       }
                       %>
                       </tbody>
                   </table>
               
                </div>
      <div class="tab" id="tab2">
        <!-- Content for View Product Info tab -->
        <table border>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Price</th>
                                <th>Image</th>
                            </tr>
                        
                        </thead>
                        <tbody>
                            <%
                                for(int i=0;i<productsList.size();i++){
                                	String[] prodArr=((String)productsList.get(i)).split(":");
                                
                            %>
                        <tr>
                            <td> <%= prodArr[0] %></td>
                            <td> <%= prodArr[1] %></td>  
                            <td> <%= prodArr[2] %></td>
                            <td> <%= prodArr[3] %></td>
                            <td><img src ="prodImg/<%= prodArr[4]%>" alt ="Product 1" width="150" height="100"></td>
                       </tr>
                       <%
                       }
                       %>
                       </tbody>
                   </table>
        
        
        
      </div>
      
      
        
        <div class ="tab" id ="tab3">
            <form action ="addP" method= "post">
                <div class ="form-group">
                    <label for "product-id">Product ID :</label>
                    <input type ="text" id = "product-id" name = "product-id" required>
                </div>
                <br><br>
                <div class ="form-group">
                    <label for "product-name">Product Name :</label>
                    <input type ="text" id = "product-name" name = "product-name" required>
                </div>
                <br><br>
                <div class ="form-group">
                    <label for "product-description">Product description :</label>
                    <input type ="text" id = "product-description" name = "product-description" required>
                </div>
                <br><br>
                 <div class ="form-group">
                    <label for "product-price">Product Price :</label>
                    <input type ="text" id = "product-price" name = "product-price" required>
                </div>
                <br><br>
                 <div class ="form-group">
                    <label for "product-name">Product Image file</label>
                    <input type ="text" id = "product-image" name = "product-image" required>
                </div>
                <br><br>
                <button type ="submit">Submit</button>
            </form>
            
            </div>
         
          </div>
         </div>   
   
            
    </body>
</html>