package com.example.SpringProject.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringProject.Entity.Patient;

public interface PatientRepositary extends JpaRepository<Patient, String> {

	
}
