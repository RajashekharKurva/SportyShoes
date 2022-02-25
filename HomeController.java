package com.sportshoes.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sportshoes.entity.AdminDetails;
import com.sportshoes.entity.CartData;
import com.sportshoes.entity.CustomerRegistration;
import com.sportshoes.entity.OrderHistory;
import com.sportshoes.entity.Products;
import com.sportshoes.repository.AdminRepository;
import com.sportshoes.repository.CartRepository;
import com.sportshoes.repository.CustomerRepository;
import com.sportshoes.repository.OrderRepository;
import com.sportshoes.repository.ProductsRepository;
import com.sportshoes.service.CustomerService;

@Controller
public class HomeController {
	
	@Autowired
	CartRepository cartRepository;
	
	@Autowired
	CustomerRepository customerRepository;
	
	@Autowired
	AdminRepository adminRepository;
	
	@Autowired
	ProductsRepository productsRepository;
	@Autowired
	OrderRepository orderRepository;
	
	CustomerRegistration customerRegistration = new CustomerRegistration();
	

	
	@RequestMapping("/")
	public String home() {
		
		return "home.jsp";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("email")String email,@RequestParam("password")String password, HttpSession session) {
		
		customerRegistration =customerRepository.findByemail(email);	
		System.out.print(customerRegistration);
		if(customerRegistration.getPassword().equals(password)) {
			session.setAttribute("email",email );
			return "sportShoesWelcome.jsp";
		}
		return "login.jsp";
	}

	@RequestMapping("/registration")
	public String registration(@RequestParam("fullName")String fullName,@RequestParam("email")String email,@RequestParam("phoneNumber") String phoneNumber,@RequestParam("password")String password,@RequestParam("confirmPassword")String confirmPassword, HttpSession session) {

		String registrationStatus="";
		
		if(password.equals(confirmPassword)) {
			customerRegistration.setFullName(fullName);
			customerRegistration.setEmail(email);
			customerRegistration.setPhoneNumber(phoneNumber);
			customerRegistration.setPassword(confirmPassword);
			registrationStatus="Registration Sucessful";
		}
		else {
			registrationStatus ="please enter password and confirmation password same";
		}
		
		customerRepository.save(customerRegistration);
		session.setAttribute("registrationStatus", registrationStatus);

		return "registration.jsp";
	}
	
	@RequestMapping("/customersList")
	public String CustomersList(Model model) {
		
		
		List<CustomerRegistration> obj = new ArrayList<>();
		
		obj= (List<CustomerRegistration>) customerRepository.findAll();
		model.addAttribute("customers",obj);
		
		return "customerList.jsp";
	}

	@RequestMapping("/adminLogin")
	public String Adminlogin(@RequestParam("userName") String userName , @RequestParam("password") String password, HttpSession session) {
		AdminDetails adminDetails =adminRepository.findByuserName(userName);	
		System.out.print(adminDetails.getPassword());
		System.out.println(password);
		if(adminDetails.getPassword().equals(password)) {
		
			session.setAttribute("userName",userName );
			return "adminwelcome.jsp";
		}
		return "adminlogin.jsp";
	}
	
	@RequestMapping("/search")
	public String getProducts(@RequestParam("brandName") String brandName,Model model) {
		
		List<Products> obj = new ArrayList<>();
		
		obj=productsRepository.findBybrandName(brandName);
		model.addAttribute("brand", brandName);
		model.addAttribute("products",obj);
					
		return "sportShoesWelcome.jsp" ;
	}
	
	
	@RequestMapping("/brand")
	public String getBrandList(@RequestParam("brandName") String brandName,Model model) {
		
		List<Products> obj = new ArrayList<>();
		
		obj=productsRepository.findBybrandName(brandName);
		model.addAttribute("brand", brandName);
		model.addAttribute("products",obj);
					
		return "search.jsp" ;
	}
	


	@RequestMapping("/AdminLogout")
	public String adminLogOut(HttpSession session) {
		
		session.removeAttribute("userName");
		session.invalidate();
			
		return "adminlogin.jsp";
		
	}
	
	@RequestMapping("/Logout")
	public String customerLogOut(HttpSession session) {
		
		session.removeAttribute("email");
		session.invalidate();
			
		return "login.jsp";
		
	}
	
	@RequestMapping("/passwordReset")
	public String passwordReset(@RequestParam("previousPassword") String previousPassword,@RequestParam("newPassword") String newPassword, HttpSession session) {
		String userName = (String) session.getAttribute("userName");
		AdminDetails adminDetails =adminRepository.findByuserName(userName);
		
		if(adminDetails.getPassword().equals(previousPassword)) {
			adminDetails.setPassword(newPassword);
			adminRepository.save(adminDetails);
			session.removeAttribute("userName");
		}
		
		return "passwordChange.jsp";
	}

	@RequestMapping("/addProducts")
	public String addProducts(@RequestParam("brandName") String brandName,@RequestParam("quantity") String quantity,@RequestParam("price") String price,@RequestParam("size") String size,@RequestParam("model") String model) {
		
		int Price= Integer.parseInt(price) ;
		int Size= Integer.parseInt(size) ;
		int Quantity= Integer.parseInt(quantity) ;
		Products products =  new Products();		
		products.setBrandName(brandName);
		products.setPrice(Price);
		products.setQuantity(Quantity);
		products.setBrandModel(model);
		products.setSize(Size);
		
		productsRepository.save(products);
				
		return "adminwelcome.jsp";
	}
	
	private int totalPrice1;
	
	@RequestMapping("/cart")
	public String setCart(Model model,@RequestParam("brandName") String brandName,@RequestParam("quantity") String quantity,@RequestParam("price") String price,@RequestParam("size") String size,@RequestParam("brandModel") String brandModel, HttpSession session) {
		
		int Quantity = Integer.parseInt(quantity);
		int Price = Quantity*Integer.parseInt(price);
		int Size = Integer.parseInt(size);
		CartData cartdata = new CartData();
		System.out.println(brandName+Quantity);
		
		cartdata.setBrandModel(brandModel);
		cartdata.setBrandName(brandName);
		cartdata.setPrice(Price);
		cartdata.setQuantity(Quantity);
		cartdata.setSize(Size);
		
		cartRepository.save(cartdata);
		session.setAttribute("totalAmount", price);
		
	
					
		return "cart.jsp" ;
	}

	@RequestMapping("/cartList")
	public String getCartList(Model model) {
		
		List<CartData> obj = new ArrayList<>();
		
		
		obj=(List<CartData>) cartRepository.findAll();
		
		
		model.addAttribute("cartProducts",obj);
		
		return "cart.jsp" ;
		
	}
	
	
	@RequestMapping("/buy")
	public String buy(Model model,HttpSession session,@RequestParam("address") String address,@RequestParam("pincode") String pincode) {
		
	   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	   LocalDateTime now = LocalDateTime.now();
	   String date=dtf.format(now);
	   String productDetails=  (String) model.getAttribute("cartProducts");
	   String email=(String) session.getAttribute("email");
	   OrderHistory orderHistory = new OrderHistory();
	   String Address=address+pincode;
	   
	   orderHistory.setDate(date);
	   orderHistory.setEmail(email);
	   orderHistory.setOrderDetails(productDetails);
	   orderHistory.setAddress(Address);
	   
	  
	   orderRepository.save(orderHistory);

		return "orderHistory.jsp";
	}
	
	@RequestMapping("/userHistory")
	public String userOrderHistory(Model model, HttpSession session) {
		
		List<OrderHistory> obj = new ArrayList<>();
		String email=(String) session.getAttribute("email");
		
		obj=(List<OrderHistory>) orderRepository.findByemail(email);
		
		
		model.addAttribute("orderHistory",obj);
		return "orderHistory.jsp";
	}
	
	@RequestMapping("/OrderDetails")
	public String adminOrderHistory(Model model) {
		
		List<OrderHistory> obj = new ArrayList<>();
	
		
		obj=(List<OrderHistory>) orderRepository.findAll();
		
		
		model.addAttribute("OrderDetails",obj);
		return "bookingOrders.jsp";
	}
	
}
