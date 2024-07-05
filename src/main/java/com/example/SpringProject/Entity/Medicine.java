package com.example.SpringProject.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;



	@Entity
	public class Medicine {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    private String name;
	    private String price;

	    @ManyToOne
	    @JoinColumn(name = "add_pharma_id")
	    private AddPharma addPharma;

	    public Medicine() {}

	    public Medicine(String name, String price, AddPharma addPharma) {
	        this.name = name;
	        this.price = price;
	        this.addPharma = addPharma;
	    }

	    // Getters and setters

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

	    public String getPrice() {
	        return price;
	    }

	    public void setPrice(String price) {
	        this.price = price;
	    }

	    public AddPharma getAddPharma() {
	        return addPharma;
	    }

	    public void setAddPharma(AddPharma addPharma) {
	        this.addPharma = addPharma;
	    }



	    
	    
	}
	
	


