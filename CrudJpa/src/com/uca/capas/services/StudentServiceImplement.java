package com.uca.capas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uca.capas.dao.StudentDAO;
import com.uca.capas.domain.Student;

@Service
@Transactional
public class StudentServiceImplement implements StudentService{
	
	@Autowired 
	StudentDAO studentDao;

	@Override
	public List<Student> findAll() {
		// TODO Auto-generated method stub
		return studentDao.findAll();
	}

	@Override
	public void save(Student student) {
		// TODO Auto-generated method stub
		studentDao.save(student);
	}

	@Override
	
	public void update(Student student) {
		// TODO Auto-generated method stub
		
		
		studentDao.update(student);
	}

	@Override
	public void delete(Student student) {
		// TODO Auto-generated method stub
		studentDao.delete(student);
	}

	@Override
	public Student findOne(Integer id) {
		// TODO Auto-generated method stub
		return studentDao.findOne(id);
	}
	
	
	

}