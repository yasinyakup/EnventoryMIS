package com.kalyon.mis.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.lang.NonNull;


@Entity
@Table(name = "tbl_employee")
public class Employee implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long id;
	
	@NotEmpty
	@NonNull
	@Column(name = "first_name")
	private String firstName;
	
	@NotEmpty
	@NotNull
	@Column(name = "last_name")
	private String lastName;
	
	@NotNull
	@NotEmpty
	private String gender;
	
	
	@DateTimeFormat(iso = ISO.DATE)
	private Date dob;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "position_id")
	private Position position;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "department_id")
	private Department department;
	
	@NotNull
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name = "begin_date")
	private Date beginDate;
	
	@NotEmpty
	@Column(name = "emp_code")
	private String empCode;

	public String getEmpCode() {
		return empCode;
	}

	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Date getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}

	
	public Employee() {
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender
				+ ", dob=" + dob + ", position=" + position + ", department=" + department + ", beginDate=" + beginDate
				+ ", empCode=" + empCode + "]";
	}
	
	
	
}
