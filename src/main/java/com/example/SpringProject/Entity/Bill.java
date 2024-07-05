package com.example.SpringProject.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Bill {
	
	@Id
	private String name;
	private int totalbill;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTotalbill() {
		return totalbill;
	}
	public void setTotalbill(int totalbill) {
		this.totalbill = totalbill;
	}
	
	
	

}
