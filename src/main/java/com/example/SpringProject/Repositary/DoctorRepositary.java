package com.example.SpringProject.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringProject.Entity.Doctor;

public interface DoctorRepositary extends JpaRepository<Doctor, String> {

}
