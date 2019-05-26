package com.uca.capas.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.commons.logging.Log;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.uca.capas.domain.Student;

@Repository
public class StudentDAOImpl implements StudentDAO{

	@PersistenceContext(unitName="school")
	private EntityManager entityManager;
	
	@Override
	public List<Student> findAll() throws DataAccessException {
		// TODO Auto-generated method stub
		
		StringBuffer sb = new StringBuffer();
		
		sb.append("SELECT * FROM public.student");
		
		Query query = entityManager.createNativeQuery(sb.toString(), Student.class);
		
		List<Student> listsOfStudents = query.getResultList();				
		return listsOfStudents;
	}
	

	@Override
	public Student findOne(Integer id) throws DataAccessException {
		// TODO Auto-generated method stub
		
		Student student = entityManager.find(Student.class, id);
		
		return student;
	}


	@Override
	public void save(Student student) throws DataAccessException {
		// TODO Auto-generated method stub
		entityManager.persist(student);
		entityManager.flush();
		
	}


	@Override
	
	public void update(Student student) throws DataAccessException {
		// TODO Auto-generated method stub
		entityManager.merge(student);
		entityManager.flush();
	}


	@Override
	public void delete(Student student) throws DataAccessException {
		// TODO Auto-generated method stub
		entityManager.remove(entityManager.contains(student) ? student : entityManager.merge(student));
		entityManager.flush();
	}

	

}