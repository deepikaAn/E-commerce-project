package com.shopping.controller;

import com.shopping.model.BillingAdd;
import com.shopping.model.Item;
import com.shopping.model.UsersDetail;
import com.shopping.model.ShippingAdd;
import com.shopping.service.ItemService;
import com.shopping.service.UsersDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;


/*
 * This Controller is used to register user into the system
 */
@Controller
public class UserController {

    @Autowired
    private UsersDetailService usersDetailService;
    /*
     * registerUser method is used to open user registration form
     */
    @RequestMapping("/register")
    public String registerUser(Model model) {

    	UsersDetail usersDetail = new UsersDetail();
        BillingAdd billingAddress = new BillingAdd();
        ShippingAdd shippingAddress = new ShippingAdd();
        usersDetail.setBillingAddress(billingAddress);
        usersDetail.setShippingAddress(shippingAddress);

        model.addAttribute("usersDetail", usersDetail);

        return "registerUser";

    }
    /*
     * registerUserPost method is used to register user into  the system and to show registration related errors
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUserPost(@Valid @ModelAttribute("usersDetail") UsersDetail usersDetail, BindingResult result,
                                       Model model) {

        if (result.hasErrors()) {
            return "registerUser";
        }

        List<UsersDetail> usersDetailList=usersDetailService.getAllUsers();

        for (int i=0; i< usersDetailList.size(); i++) {
            if(usersDetail.getUserEmail().equals(usersDetailList.get(i).getUserEmail())) {
                model.addAttribute("emailMsg", "Email already exists");

                return "registerUser";
            }

            if(usersDetail.getUsername().equals(usersDetailList.get(i).getUsername())) {
                model.addAttribute("usernameMsg", "Username already exists");

                return "registerUser";
            }
        }

        usersDetail.setEnabled(true);
        usersDetailService.addUser(usersDetail);
        model.addAttribute("msg", "You have been registered successfully, please login to continue");
        return "login";

    }
    
    @Autowired
	 private ItemService itemService;
	
	/*
	 * home method is used to land a user on home page
	 */
	 @RequestMapping("/")
	    public String getItemsHome(Model model) {
	        List<Item> item = itemService.getItemList();
	        model.addAttribute("items", item);

	        return "home";
	    }
   /*
    * login method is used to handle user login related functionality
    */
   @RequestMapping("/login")
   public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
           required = false) String logout, Model model) {
       if (error!=null) {
           model.addAttribute("error", "Invalid username and password");
       }

       if(logout!=null) {
           model.addAttribute("msg", "You have been logged out successfully.");
       }

       return "login";
   }
   /*
    * methods shows respective pages.
    */
   @RequestMapping("/about")
   public String about() {
       return "aboutUs";
   } 
   @RequestMapping("/term")
   public String term() {
       return "termsOfUse";
   }    
   @RequestMapping("/privacy")
   public String privacy() {
       return "privacy";
   }  
   @RequestMapping("/shop")
   public String shop() {
       return "shopGaurantee";
   }
   @RequestMapping("/premium")
   public String premium() {
       return "premiumWarranty";
   } 
  

}
