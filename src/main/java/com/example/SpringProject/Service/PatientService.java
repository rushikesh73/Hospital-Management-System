package com.example.SpringProject.Service;

import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.SpringProject.Entity.AddPharma;
import com.example.SpringProject.Entity.Admin;
import com.example.SpringProject.Entity.Bill;
import com.example.SpringProject.Entity.Doctor;
import com.example.SpringProject.Entity.Medicine;
import com.example.SpringProject.Entity.Patient;
import com.example.SpringProject.Repositary.AdminRepositary;
import com.example.SpringProject.Repositary.BillRepositary;
import com.example.SpringProject.Repositary.DoctorRepositary;
import com.example.SpringProject.Repositary.PatientRepositary;
import com.example.SpringProject.Repositary.PharmaRepositary;

import jakarta.persistence.EntityManager;
import jakarta.servlet.http.HttpServlet;
import jakarta.transaction.Transactional;

@org.springframework.stereotype.Service
public class PatientService {
	@Autowired
	PatientRepositary repo;
	@Autowired
	PharmaRepositary repoo;
	
	@Autowired
	DoctorRepositary drepo;
	
	@Autowired
	AdminRepositary aRepo;
	
	@Autowired
	BillRepositary bRepo;


	public void addPatient(Patient obj)
	{
		repo.save(obj);
		
	}
	
	public void updatePatient(Patient obj)
	{
		
	   Patient tobj =repo.findById(obj.getName()).orElse(null);
		
        tobj.setExitDate(obj.getExitDate());
	
         repo.save(tobj);
	}
	
	@Transactional
    public void saveAddPharma(String name, List<String> medicines, List<String> prices) {
        List<Medicine> medicineList = new ArrayList<>();
        AddPharma addPharma = new AddPharma(name);

        for (int i = 0; i < medicines.size(); i++) {
            String medicineName = medicines.get(i);
            String price = prices.get(i);
            medicineList.add(new Medicine(medicineName, price, addPharma));
        }

        addPharma.setMedicines(medicineList);
        repoo.save(addPharma);
    }    
    public Doctor readdoctor(String name)
    {

    	return   drepo.findById(name).orElse(null);

    }
    
    public void saveDr(Doctor dr)
    {
    	drepo.save(dr);
    }
    
    public Patient readPatient(String name)
    {
    	
    	return  repo.findById(name).orElse(null);
    	
    }
    
    public AddPharma readBill(String name) {
        return repoo.findById(name).orElse(null);
    }
    
    public Admin readAdmin(String username)
    {
    	return aRepo.findById(username).orElse(null);
    }
    
    public void updatePassword(String username,String password)
    {
    	 Admin admin = aRepo.findById(username).orElse(null);
    	 
    	 admin.setPassword(password);
    	 
    	 aRepo.save(admin);
    }
    
    public void addBill(Bill bill)
    {
    	
    	bRepo.save(bill);
    }
    

}
