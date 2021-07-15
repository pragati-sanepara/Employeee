<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.db.data.DbOperation"%>
<jsp:useBean id="emp" class="com.db.detail.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="emp" />
<%  
	int status = DbOperation.addNewEmployee(emp);  
	if(status > 0)
	{  
		response.sendRedirect("AddEmployee-Success.jsp");  
	}
	else
	{  
		response.sendRedirect("AddEmployee-Error.jsp");  
	}  
%>
