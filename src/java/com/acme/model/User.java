package com.acme.model;
import java.io.Serializable;
import java.util.Date;
 
public class User implements Serializable{
   private String name,designation,manager;
   int id;
 
    //put getter and setter here 
  public User()
  {
      this.id=0;
      this.name="name";
      this.designation="designation";
      this.manager="manager";
  }
  public void setId(int id)
  {
      this.id=id;
  }
  public void setName(String name)
  {
      this.name=name;
  }
  public void setDesignation(String designation)
  {
      this.designation=designation;
  }
  public void setManager(String manager)
  {
      this.manager=manager;
  }
  public int getId()
  {
      return this.id;
  }
  public String getName()
  {
      return this.name;
  }
  public String getDesignation()
  {
      return this.designation;
  }
  public String getManager()
  {
      return this.manager;
  }
}