package com.uca.capas.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.uca.capas.domain.Student;
import com.uca.capas.services.StudentService;


@Controller
public class MainController {
	
	@Autowired
	StudentService studentService;
	
	@RequestMapping("/")
	public ModelAndView initMain() {		
		ModelAndView mav = new ModelAndView();	
		List<Student> estudiantes = studentService.findAll();
		mav.addObject("estudiantes", estudiantes);
		mav.setViewName("main");
		return mav;
	}	
	
	@RequestMapping("/edit")
	public ModelAndView editStudent(@RequestParam String id) {		
		ModelAndView mav = new ModelAndView();	
		System.out.println("El ID es: " + id);
		Student estudiante = studentService.findOne(Integer.parseInt(id));
		mav.addObject("estudiante", estudiante);
		mav.setViewName("info_student");
		return mav;
	}	
	
	@RequestMapping("/info_student")
	public ModelAndView editStudentInfo(@ModelAttribute Student student) {		
		ModelAndView mav = new ModelAndView();	
				
		studentService.update(student);
		
		List<Student> estudiantes = studentService.findAll();
		mav.addObject("estudiantes", estudiantes);
		mav.setViewName("main");
		return mav;
	}	
	
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam String id) {		
		ModelAndView mav = new ModelAndView();	
		System.out.println("El ID es: " + id);
		Student estudiante = studentService.findOne(Integer.parseInt(id));
		mav.addObject("estudiante", estudiante);
		mav.setViewName("delete_student");
		return mav;
	}	
	
	@RequestMapping("/delete_student")
	public ModelAndView deleteStudent(@ModelAttribute Student student) {		
		ModelAndView mav = new ModelAndView();	
				
		studentService.delete(student);
		
		List<Student> estudiantes = studentService.findAll();
		mav.addObject("estudiantes", estudiantes);
		mav.setViewName("main");
		return mav;
	}	
	
	@RequestMapping("/create_student")
	public ModelAndView createStudent() {		
		ModelAndView mav = new ModelAndView();	
		
		Student estudiante = new Student();
		
		mav.addObject("estudiante", estudiante);
		mav.setViewName("create_student");
		return mav;
	}	
	
	@RequestMapping("/create")
	public ModelAndView create(@ModelAttribute Student student) {		
		ModelAndView mav = new ModelAndView();	
				
		studentService.save(student);
		
		List<Student> estudiantes = studentService.findAll();
		mav.addObject("estudiantes", estudiantes);
		mav.setViewName("main");
		return mav;
	}	

}