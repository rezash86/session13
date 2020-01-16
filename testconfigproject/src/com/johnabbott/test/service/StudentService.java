package com.johnabbott.test.service;

import java.util.List;

import com.johnabbott.test.model.Email;
import com.johnabbott.test.model.StudentEntity;

public interface StudentService {
	public boolean addStudent(StudentEntity std);
	
	public boolean addEmail(Email email);
	
	public List<StudentEntity> getStudents(); // Read
	
	public StudentEntity getStudentById(int studentId); // Read
	
	public boolean deleteStudent(int studentId); //DELETE
	
	public boolean updateStudent(StudentEntity std); // UPDATE
}
