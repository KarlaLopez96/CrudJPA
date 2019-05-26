package com.uca.capas.dao;


import java.util.List;

import org.springframework.dao.DataAccessException;


import com.uca.capas.domain.Student;

public interface StudentDAO {
	
	public List<Student> findAll() throws DataAccessException;
	public Student findOne(Integer id) throws DataAccessException;
	public void save(Student student) throws DataAccessException;
	public void update(Student student) throws DataAccessException;	
	public void delete(Student student) throws DataAccessException;
	
}

