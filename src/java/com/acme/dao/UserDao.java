package com.acme.dao;
 
import java.sql.*;
import java.util.*;
import com.acme.model.User;
import com.acme.util.Database;
 
public class UserDao {
 
    private Connection connection;
    
 
    public UserDao() {
        connection = Database.getConnection();
    }
    public void setEmployee(int id,String name,String designation,String manager) {
        try {
            User em = new User();
                em.setId(id);
                em.setName(name);
                em.setDesignation(designation);
                em.setManager(manager);
            PreparedStatement ps = connection.prepareStatement("insert into employee values(?,?,?,?)");
                    ps.setInt(1,em.getId());
                    ps.setString(2,em.getName());
                    ps.setString(3,em.getDesignation());
                    ps.setString(4,em.getManager());
                ps.executeUpdate();
       
            
        }
        
        catch (Exception ex) {
            System.out.println("Error in check() -->" + ex.getMessage());
        }
       
        
        
    }
    public void updateEmployee(int id,String name,String designation,String manager) {
        try {
            User em = new User();
                em.setId(id);
                em.setName(name);
                em.setDesignation(designation);
                em.setManager(manager);
            PreparedStatement ps = connection.prepareStatement("update employee set name=?, designation=?, manager=? where id=?");
                    ps.setInt(4,em.getId());
                    ps.setString(1,em.getName());
                    ps.setString(2,em.getDesignation());
                    ps.setString(3,em.getManager());
                ps.executeUpdate();
       
            
        } catch (Exception ex) {
            System.out.println("Error in check() -->" + ex.getMessage());
        } 
        
    }
 
    public ArrayList<User> getEmployee() {
         ArrayList<User> emp =new ArrayList<User>();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from employee order by id");
            ResultSet rs = ps.executeQuery();
           
            while(rs.next())
            {
                int id=rs.getInt("id");
                String name=rs.getString("name");
                String designation = rs.getString("designation");
                String manager =rs.getString("manager");
                User em = new User();
                em.setId(id);
                em.setName(name);
                em.setDesignation(designation);
                em.setManager(manager);
                emp.add(em);
            }
            
            
        } catch (Exception ex) {
            System.out.println("Error in check() -->" + ex.getMessage());
        } 
        return emp;
    }
     public User getSingle(int ID) {
         ArrayList<User> emp =new ArrayList<User>();
         User em = new User();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from employee where id='"+ID+"'");
            ResultSet rs = ps.executeQuery();
           
            while(rs.next())
            {
                int id=rs.getInt("id");
                String name=rs.getString("name");
                String designation = rs.getString("designation");
                String manager =rs.getString("manager");
                
                em.setId(id);
                em.setName(name);
                em.setDesignation(designation);
                em.setManager(manager);
               
            }
            
            
        } catch (Exception ex) {
            System.out.println("Error in check() -->" + ex.getMessage());
        } 
        return em;
    }
     public ArrayList<String> getManager() {
         ArrayList<String> emp =new ArrayList<String>();
        try {
            PreparedStatement ps = connection.prepareStatement("select distinct name from employee");
            ResultSet rs = ps.executeQuery();
           
            while(rs.next())
            {
                
                String manager =rs.getString("name");
               
                emp.add(manager);
            }
            
            
        } catch (Exception ex) {
            System.out.println("Error in check() -->" + ex.getMessage());
        } 
        return emp;
    }
     public ArrayList<String> getOldManager() {
         ArrayList<String> emp =new ArrayList<String>();
        try {
            PreparedStatement ps = connection.prepareStatement("select distinct manager from employee");
            ResultSet rs = ps.executeQuery();
           
            while(rs.next())
            {
                
                String manager =rs.getString("manager");
               
                emp.add(manager);
            }
            
            
        } catch (Exception ex) {
            System.out.println("Error in check() -->" + ex.getMessage());
        } 
        return emp;
    }
     public ArrayList<Integer> getId() {
         ArrayList<Integer> emp =new ArrayList<Integer>();
        try {
            PreparedStatement ps = connection.prepareStatement("select id from employee");
            ResultSet rs = ps.executeQuery();
           
            while(rs.next())
            {
                
                int id =rs.getInt("id");
               
                emp.add(id);
            }
            
            
        } catch (Exception ex) {
            System.out.println("Error in check() -->" + ex.getMessage());
        } 
        return emp;
    }
  
}