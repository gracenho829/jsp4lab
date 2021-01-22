package com.book;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.book.Book;  
public class BookDAO {

	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/gracenho829","gracenho829","ok829315");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Book u){  
	    int st=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into bookList (name,author,status) values(?,?,?)");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getAuthor());  
	        ps.setString(3,u.getStatus());  
	        st=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return st;  
	}  
	
	public static int update(Book u){  
	    int st=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update bookList set name=?,author=?,status=? where id=?");  
	        System.out.println(u.getId());
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getAuthor());  
	        ps.setString(3,u.getStatus());  
	        ps.setInt(4,u.getId());  
	        st=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return st;  
	}  
	
	public static int delete(Book u){  
	    int st=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from bookList where id=?");  
	        ps.setInt(1,u.getId());  
	        st=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return st;  
	}  
	
	public static List<Book> getAllRecords(){  
	    List<Book> list=new ArrayList<Book>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from bookList");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Book u=new Book();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setAuthor(rs.getString("author"));  
	            u.setStatus(rs.getString("status"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	public static Book getRecordById(int id){  
	    Book u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from bookList where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Book();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setAuthor(rs.getString("author"));  
	            u.setStatus(rs.getString("status"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}
