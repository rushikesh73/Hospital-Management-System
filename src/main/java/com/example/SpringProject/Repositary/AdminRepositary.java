package com.example.SpringProject.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringProject.Entity.Admin;

public interface AdminRepositary extends JpaRepository<Admin, String>{

}
