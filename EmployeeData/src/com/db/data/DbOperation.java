package com.db.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.db.detail.Employee;

public class DbOperation 
{
	public static int addNewEmployee(Employee emp)
	{  
	    int status = 0;  
	    try
	    {
	    	String sqlQuery = "insert into employeeDetail( name, age, current_addr, permanent_addr) values(?,?,?,?)";
	        Connection connection = DbConnection.getConnection();  
	        PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);  
	        preparedStatement.setString(1,emp.getName());  
	        preparedStatement.setInt(2,emp.getAge());
	        preparedStatement.setString(3,emp.getCurrent_addr());
	        preparedStatement.setString(4,emp.getPermanent_addr());
	        status = preparedStatement.executeUpdate();  
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	    return status;  
	}
	public static List<Employee> getAllEmployee()
	{  
		List<Employee> empList = new ArrayList<Employee>();  
	    try
	    {
	    	String sqlQuery = "select * from employeeDetail";
	        Connection connection = DbConnection.getConnection();  
	        PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);  
	        ResultSet resultSet = preparedStatement.executeQuery();  
	        while(resultSet.next()){   
	        	Employee emp = new Employee();
	        	emp.setEmp_id(resultSet.getInt("emp_id"));
	        	emp.setName(resultSet.getString("name"));
	        	emp.setAge(resultSet.getInt("age"));
	        	emp.setCurrent_addr(resultSet.getString("current_addr"));
	        	emp.setPermanent_addr(resultSet.getString("permanent_addr"));
	        	
	        	empList.add(emp);
	        }
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	    return empList;  
	} 
}
