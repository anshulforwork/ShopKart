package com.shopKart.dbHandler;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.*;

import com.shopKart.product.*;

import java.sql.*;



public class DataFetcher {

	public static String fetchPassword(String uname) {
		// TODO Auto-generated method stub
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String password = "system";
		String sql ="SELECT pass FROM customers WHERE uname=?";
		String dbPass=" ";
		
		try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user,password);
		PreparedStatement ps= con.prepareStatement(sql);
		
		ps.setString(1, uname);
		ResultSet rs = ps.executeQuery();
		rs.next();
			
		dbPass =rs.getString(1);
			}catch(Exception ex){
				System.out.println("Login issues");
				ex.printStackTrace();
			}
			
		
		return dbPass;
				}

public static List fetchUsersInfo(){
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String password = "system";
	String sql ="SELECT uname,mail,gender,address FROM customers ";
	List ulist =new ArrayList();
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user,password);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()) {
			String temp = rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
	    ulist.add(temp);
		}
	}catch(Exception e){
			
			System.out.println("problem in userinfo fetching");
			
			
		}
		
		return ulist;
  }

public static List fetchProductsInfo(){
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String password = "system";
	String sql ="SELECT pid,pname,pdesc,pprice,pimg FROM products ";
	List ilist =new ArrayList();
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user,password);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()) {
			String temp = rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+":"+rs.getString(5);
	    ilist.add(temp);
		}
	}catch(Exception e){
			
			System.out.println("problem in product fetching");
			
			
		}
		
		return ilist;
  }
public static Product getProductBYId(int pid) {
	// TODO Auto-generated method stub
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String password = "system";
	String sql ="SELECT pname,pprice  FROM products WHERE pid=?";
	Product p= null;
	
	try {
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url, user,password);
	PreparedStatement ps= con.prepareStatement(sql);
	
	ps.setInt(1, pid);
	ResultSet rs = ps.executeQuery();
	rs.next();
	String pname = rs.getString(1);
	int pprice = rs.getInt(2);
	p= new Product(pid,pname,pprice);

		}catch(Exception ex){
			System.out.println("problem in get product by id");
			ex.printStackTrace();
		}
		finally {
			return p;
		}
	

			}
	
		
}
		
	

	
	
	


	


