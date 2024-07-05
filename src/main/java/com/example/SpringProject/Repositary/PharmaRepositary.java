package com.example.SpringProject.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringProject.Entity.AddPharma;

public interface PharmaRepositary extends JpaRepository<AddPharma, String>{

}
