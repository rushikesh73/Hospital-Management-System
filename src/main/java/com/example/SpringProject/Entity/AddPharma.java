package com.example.SpringProject.Entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class AddPharma {

   
    @Id
    private String name;

    @OneToMany(mappedBy = "addPharma", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Medicine> medicines;

    public AddPharma() {}

    public AddPharma(String name) {
        this.name = name;
    }

    // Getters and setters



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Medicine> getMedicines() {
        return medicines;
    }

    public void setMedicines(List<Medicine> medicines) {
        this.medicines = medicines;
    }

	@Override
	public String toString() {
		return "AddPharma [name=" + name + ", medicines=" + medicines + ", getName()=" + getName() + ", getMedicines()="
				+ getMedicines() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
    
    
}
