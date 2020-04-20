package com.kalyon.mis.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_equipment")
public class Equipment {
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String name;
	
	@OneToMany(mappedBy = "equipment")
	private List<Item> items;
	
	@ManyToOne
	@JoinColumn(name = "workshop_id")
	private Workshop workshop;
	
	
	
	
	public Workshop getWorkshop() {
		return workshop;
	}
	public void setWorkshop(Workshop workshop) {
		this.workshop = workshop;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}


}
