package com.example.SpringProject.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Doctor {
	
    
	@Id
	private String name;
	private String days;
	private String time;


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Doctor [name=" + name + ", days=" + days + ", time=" + time + ", getName()=" + getName()
				+ ", getDays()=" + getDays() + ", getTime()=" + getTime() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	
	
	

}
