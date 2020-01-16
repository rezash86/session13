package com.johnabbott.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "email")
public class Email {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "address")
	private String emailAddress;
	
	
	@ManyToOne
    @JoinColumn(name="student_id", nullable=false)
	private StudentEntity student;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmailAddress() {
		return emailAddress;
	}


	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}


	public StudentEntity getStudent() {
		return student;
	}


	public void setStudent(StudentEntity student) {
		this.student = student;
	}


	public Email() {
	}
	
	
	
}
