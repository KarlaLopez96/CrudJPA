package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(schema="public", name="student")
public class Student {
	
	@Id
	@GeneratedValue(generator="student_id_student_seq", strategy=GenerationType.AUTO)
	@SequenceGenerator(name="student_id_student_seq", sequenceName="public.student_id_student_seq", allocationSize=1)
	@Column(name="id_student")
	private Integer id;
	
	@Column(name="s_name")
	private String name;
	
	@Column(name="s_lname")
	private String surname;
	
	@Column(name="b_active")
	private boolean isActive;
	
	@Column(name="s_age")
	private Integer age;
	
	@Transient
	private String activeStatus;	
		
	public Student() {
		
	}
	
	public Integer getAge() {
		return age;
	}
	
	public Integer getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getSurname() {
		return surname;
	}
	
	public boolean getActive() {
		return this.isActive;	
	}
	
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	
	public void setAge(Integer age) {
		this.age = age;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setSurname(String surname) {
		this.surname = surname;
	}
	
	public String getActiveStatus() {
		if(isActive) {
			return "Activo";
		}
		else {
			return "Inactivo";
		}
	}
	
}