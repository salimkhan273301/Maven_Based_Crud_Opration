package com.servosys.dao;


import java.util.List;

import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import javax.transaction.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;


import com.servosys.model.Student;

public class DbOpration {
	
	
	public static void saveStudent(Student student) throws RuntimeException, Exception, HeuristicMixedException, Throwable, SystemException {
		
		Session session=DbConnection.getSessionFactory().openSession();
		 org.hibernate.Transaction transaction =session.beginTransaction();
		 session.save(student);
		 transaction.commit();
		 session.close();
		
	}



public static List<Student> showStudent(){
	Session session=DbConnection.getSessionFactory().openSession();
	 org.hibernate.Transaction transaction =session.beginTransaction();
	 Query query = session.createQuery("from Student");
	 List<Student> list=query.list();
	 transaction.commit();
	
	return list;		
}

public static void deleteStudent(int id) {
	
	Session session=DbConnection.getSessionFactory().openSession();
	org.hibernate.Transaction txn=session.beginTransaction();
	Student s=(Student) session.load(Student.class,id);
	session.delete(s);
	txn.commit();
	session.close();
	
}
public static Student getStudentById(int id){
	Session session=DbConnection.getSessionFactory().openSession();
	 org.hibernate.Transaction transaction =session.beginTransaction();
	Student s=(Student) session.get(Student.class, id);
	
	return s;
}

public static void updateStudent(Student student) {
	
	Session session=DbConnection.getSessionFactory().openSession();
	 org.hibernate.Transaction transaction =session.beginTransaction();
	 session.update(student);
	 transaction.commit();
	 session.close();
	
}

}