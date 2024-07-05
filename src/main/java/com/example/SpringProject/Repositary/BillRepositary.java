package com.example.SpringProject.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringProject.Entity.Bill;

public interface BillRepositary extends JpaRepository<Bill, String>{

}
