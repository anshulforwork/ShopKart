<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Customer Registration</title>
        <style >
        /* CSS for colorful and attractive styling */

body {
  font-family: Arial, sans-serif;
  background-color: #f1f1f1;
  margin: 0;
  padding: 0;
}

h1 {
  text-align: center;
  color: #333;
  margin-bottom: 30px;
  text-transform: uppercase;
}

.register {
  width: 400px;
  margin: 0 auto;
  background-color: #f9f9f9;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

label {
  display: block;
  margin-bottom: 10px;
  color: #666;
  font-weight: bold;
  text-transform: uppercase;
}

input[type="text"],
input[type="password"],
textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-bottom: 20px;
  background-color: #f9f9f9;
}

input[type="text"]:focus,
input[type="password"]:focus,
textarea:focus {
  outline: none;
  border-color: #5e9cff;
  box-shadow: 0 0 5px rgba(94, 156, 255, 0.5);
}

input[type="radio"] {
  margin-right: 8px;
}

#sub {
  background-color: #4a90e2;
  color: white;
  padding: 12px 24px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  text-transform: uppercase;
  transition: background-color 0.3s ease;
}

#sub:hover {
  background-color: #2e6cc4;
}

a {
  color: #4a90e2;
  text-decoration: none;
  font-weight: bold;
}

a:hover {
  color: #2e6cc4;
}
        
        
        
        
        
        </style>
   
       

    </head>
    <body>
        <h1>Register here</h1><br>
        <div class ="register">
            <form method="post" action ="reg">
                 <label><b>User name</b></label><br>
                 <input type = "text" name ="uname" id ="textBox" placeholder="Username">
                 <br><br>
                 <label><b>Email</b></label><br>
                 <input type = "text" name ="mail" id ="textBox" placeholder="E mail">
                 <br><br>
                 <label><b>Password</b></label><br>
                 <input type = "Password" name ="pass" id ="textBox" placeholder="Password">
                 <br><br>
                 <label><b>Gender</b></label><br>
                 <input type = "radio" name ="gender" Value="male" >Male
                 <input type = "radio" name ="gender" Value="female" >Female
                 <input type = "radio" name ="gender" Value="other" >Other
                 <br><br>
                 <label><b>Address</b></label><br>
                 <textarea rows="2" cols="20" id = "textBox" name ="address" class="foraddress" ></textarea>
                 <br><br>
                <input type = "submit" id ="sub" value="register">
                <br><br>
                <a href= "login.jsp">Already registered? Sign in</a>
            </form>
        </div>
    </body>
</html>