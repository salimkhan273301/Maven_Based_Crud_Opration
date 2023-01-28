package com.servosys.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servosys.dao.DbOpration;
import com.servosys.model.Student;

/**
 * Servlet implementation class StudentCrud
 */
public class StudentCrud extends HttpServlet {
	

private static final long serialVersionUID = 1L;

String action;
int id;






protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	//response.getWriter().append("Served at: ").append(request.getContextPath());
	
	doPost(request,response);
	
}





protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
action=request.getServletPath();
System.out.println("ServletPath:  "+action);
if(action.length()>7) {
String[] result=action.split("/");
action=result[1];
String id1=result[2];
id=Integer.parseInt(id1);
System.out.println("After split action :"+action);
System.out.println("After split ID: "+id);
}


	
	switch(action) {
	case "/save":
		saveStudent(request,response);
		break;
	case "/show":
		showStudent(request,response);
		break;
	case "delete":
		deleteStudent(request,response);
		break;
	case "/update":
		updateStudent(request,response);
		break;
	case "update":
		getDataById(request,response);
		break;	
		
		
		
	}
	
}

private void getDataById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	Student list=DbOpration.getStudentById(id);
	
	RequestDispatcher dp=request.getRequestDispatcher("/update.jsp");
	request.setAttribute("s", list);
	dp.forward(request, response);
}


private void updateStudent(HttpServletRequest request, HttpServletResponse response) throws IOException {
	int id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String gender=request.getParameter("gender");
	String branch=request.getParameter("branch");
	String address=request.getParameter("address");
	String password=request.getParameter("password");
	Student student=new Student();
	student.setId(id);
	student.setName(name);
	student.setEmail(email);
	student.setGender(gender);
	student.setBranch(branch);
	student.setAddress(address);
	student.setPassword(password);
	
	
	
	
	DbOpration.updateStudent(student);
	response.sendRedirect("http://localhost:8080/MavenCrud_App/show");
	
}


private void deleteStudent(HttpServletRequest request, HttpServletResponse response) throws IOException {

	DbOpration.deleteStudent(id);
	response.sendRedirect("http://localhost:8080/MavenCrud_App/show");
	
}


protected void saveStudent(HttpServletRequest request, HttpServletResponse response) throws IOException {
	

	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String gender=request.getParameter("gender");
	String branch=request.getParameter("branch");
	String address=request.getParameter("address");
	String password=request.getParameter("password");
	Student student=new Student();
	student.setName(name);
	student.setEmail(email);
	student.setGender(gender);
	student.setBranch(branch);
	student.setAddress(address);
	student.setPassword(password);
	try {
		DbOpration.saveStudent(student);
	
	
	} catch (Throwable e) {
		
		e.printStackTrace();
	}
	
	
response.sendRedirect("http://localhost:8080/MavenCrud_App/show");
	
}
private void showStudent(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
	
	List<Student> list=DbOpration.showStudent();
	request.setAttribute("s",list);
	
	request.getRequestDispatcher("/show.jsp").forward(request, response);
	//response.sendRedirect("http://localhost:8080/MavenCrud_App/show");
	
	


	
}


}