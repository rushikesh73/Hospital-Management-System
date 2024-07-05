package com.example.SpringProject.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringProject.Entity.Medicine;

public interface MedicineRepositary extends JpaRepository<Medicine, Integer> {

}
