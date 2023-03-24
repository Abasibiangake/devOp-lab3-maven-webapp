package com.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationController {
	@RequestMapping ("/register")
    public ModelAndView register(HttpServletRequest request, HttpServletResponse response) {
		String childName = request.getParameter("childfirstName") + " " +request.getParameter("childlastName");
		String childDOB = request.getParameter("birthDay") + "-" +request.getParameter("birthMonth") + "-" +request.getParameter("birthYear");

		String parentEmail = request.getParameter("parentEmail");
		String parentName = request.getParameter("parentfirstName") + " " +request.getParameter("parentlastName");
		String parentPhoneNo =  "(" + request.getParameter("parentAreaCode") + ") " + request.getParameter("parentPhoneNumber");
		
		//get the medical info using request
		String physicianName = request.getParameter("physicianFirstName")  + " " +request.getParameter("physicianLastName");
		String physicianPhoneNo =  "(" + request.getParameter("areaCode") + ") " +request.getParameter("physicianPhoneNumber");
		
		//get the uniform info using request
		int noOfShirt = Integer.parseInt(request.getParameter("shirtQuantity"));
		int noOfShort = Integer.parseInt(request.getParameter("shortQuantity"));
		
		//use modelAndView to create a holder for both the model and view in web mvc framework
		ModelAndView mview = new ModelAndView("show-details");
	    mview.addObject("childName", childName);
	    mview.addObject("parentName", parentName);
	    mview.addObject("childDOB", childDOB);
	    mview.addObject("parentEmail", parentEmail);
	    mview.addObject("parentPhoneNo", parentPhoneNo);
	    
	    mview.addObject("physicianName", physicianName);
	    mview.addObject("physicianPhoneNo", physicianPhoneNo);
	    
	    mview.addObject("noOfShirt", noOfShirt);
	    mview.addObject("noOfShort", noOfShort);
	    
	    //call and instantiate the model class in controller class
	    Registration registration = new Registration();
	    int total = registration.calculateTotal(noOfShirt, noOfShort);
	    //update the modelandview
	    mview.addObject("total", total);
		
		return mview;
		
	}
	
	
	@GetMapping("/welcome")
	public ModelAndView display(HttpServletRequest request, HttpServletResponse response ) {
        LocalDateTime now = LocalDateTime.now();
      //use modelAndView to create a holder for both the model and view in web mvc framework
      ModelAndView mview = new ModelAndView("devOpsFile");
      String name = "Abasibiangake James";
        int hour = now.getHour();
        String message="";
        if (hour >= 12 && hour < 18) {
            message = "Good afternoon " + name;
        } else if (hour >= 18) {
            message = "Good evening "+ name;
        } else {
            message = "Good morning " + name;
        }
        mview.addObject("message", message);
//        return "greeting";
		return mview;
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//    
	}
}
