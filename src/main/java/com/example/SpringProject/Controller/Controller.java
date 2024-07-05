package com.example.SpringProject.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.SpringProject.Entity.AddPharma;
import com.example.SpringProject.Entity.Admin;
import com.example.SpringProject.Entity.Bill;
import com.example.SpringProject.Entity.Doctor;
import com.example.SpringProject.Entity.Medicine;
import com.example.SpringProject.Entity.Patient;
import com.example.SpringProject.Service.PatientService;

import ch.qos.logback.core.model.Model;

@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired
	 PatientService ser;
	private String price;
	
	
	@RequestMapping("Hospital")
	public String hospital()
	{
		
		return"Admin";
	}
	
	@RequestMapping("Admin")
	public String hosp(String username,String password)
	{
		        Admin admin = ser.readAdmin(username);

		        if(username.equals(admin.getUsername() )&& password.equals(admin.getPassword()))
		        {
		    		return"Profile";

		        }
		        
		       return"ErrorPage";
	}
	
	@RequestMapping("AddPnt")
	public String addPatient()
	{
		
		return"AddPatient";
	}
	
	@RequestMapping("add")
	public String addPnt(Patient obj)
	{
		ser.addPatient(obj);
		
		return"Successfully";
	}
	
	
	
	@RequestMapping("AddPhr")
	public String addPharma()
	{
		
		return"AddPharma";
	}
	
	@RequestMapping("ShowP")
	public String patientDetail()
	{
		
		
		return"PatientDetail";
	}
	
	@RequestMapping("Bill")
	public String bill()
	{
		
		return"Bill";
	}
	
	@RequestMapping("Doctor")
	public String doctorDetail()
	{
		   
		return"DoctorDetail";
	}
	
	@RequestMapping("ExitPnt")
	public String Exitpatient()
	{
		
		return"ExitPatient";
	}
	@RequestMapping("exitDone")
	public String exit(Patient obj)
	{
		 Patient pt  =   ser.readPatient(obj.getName());
		 String a = String.valueOf(pt);
		 String b = a+"value";
		 
		 System.out.println(b);
		if(b.equals("nullvalue"))
		{
			
			return"ErrorTwo";
		}
		
			ser.updatePatient(obj);
			
		
		return"Success";
		
		
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveAddPharma(@RequestParam("name") String name,
                                @RequestParam("medicine") List<String> medicines,
                                @RequestParam("price") List<String> prices) {
        ser.saveAddPharma(name, medicines, prices);
        return "Success";
    }
	
	@RequestMapping("/Drread")
	public ModelAndView doctor(String name)
	{
		   Doctor dr =ser.readdoctor(name);
		   
		  ModelAndView mv = new ModelAndView();
		  mv.addObject("key", dr);
		  
		  mv.setViewName("ShowDr");
		return mv;
	}
	
	@RequestMapping("AddDr")
	public String addDr(Doctor dr)
	{
			
		return"AddDr";
	}
	@RequestMapping("AddDrData")
	public String addDrData(Doctor dr)
	{
		ser.saveDr(dr);
		
		return"Success";
	}
	
	@RequestMapping("showPatient")
	public ModelAndView showPatient(String name)
	{
		     Patient pt = ser.readPatient(name);
		     ModelAndView mv = new ModelAndView();
		     mv.addObject("key", pt);
		     
		     mv.setViewName("ShowPatient");
		     
		     return mv;
		
		     
	}
	
 /*   @PostMapping("/GenerateBill")
    public ModelAndView showBill(@RequestParam String name) {
        AddPharma addPharma = ser.readBill(name);
        ModelAndView mv = new ModelAndView();
        mv.addObject("key", addPharma);
        System.out.println(addPharma);
        
        
        mv.setViewName("ShowBill");
        return mv;
    }
    */
    @RequestMapping("ChangePass")
    public String admin(String username, String password)
    {
    	Admin admin = ser.readAdmin(username);
    

        if(username.equals(admin.getUsername() )&& password.equals(admin.getPassword()))
        {
        	return"NewPass";

        }
        
       return"ErrorPage";

    	
    }
    
    @RequestMapping("home")
    public String hommi()
    {
    	return"Profile";
    }
    
    @RequestMapping("SuccessAdmin")
    public String AdminSuccess(String username,String password)
    {
    	ser.updatePassword(username,password);
    	
    	return"SuccessAdmin";
    }
    @RequestMapping("Forgot")
    public String rushikesh()
    {
    	return"ChangePass";
    }
    
    @RequestMapping("AdminPage")
    public String akshu()
    {
    	return"Admin";
    }
    
    @RequestMapping("GenerateBill")
    public String akshu2()
    {
    	return"TotalBill";
    }
    
    @RequestMapping("total")
    public String akshu3(String name, int totalbill)
    {
    	
    	System.out.println(name+"kkkkkkkk"+totalbill);
        Bill bill = new Bill();
        bill.setName(name);
        bill.setTotalbill(totalbill);

       


    	ser.addBill(bill);
    	
    	return"Payment";
    }
    
	
	
	
	

	
	
	

}

