package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Booking;

import com.cdac.dto.User;
import com.cdac.service.BookingService;
@Controller
 class BookingController {
	@Autowired
	private BookingService bookingService;
	@RequestMapping(value = "/prep_booking_add_form.htm",method = RequestMethod.GET)
	public String prepbookingAddForm(ModelMap map) {
		map.put("booking", new Booking());
		return "booking_add_form";
	}
	@RequestMapping(value = "/booking_add.htm",method = RequestMethod.GET)
	public String expenseAdd(Booking booking,HttpSession s ) {
		int a = ((User)s.getAttribute("user")).getUserId();
		booking.setUserId(a);
		bookingService.addbooking(booking);
		return "home";
	}
	@RequestMapping(value = "/booking_list.htm",method = RequestMethod.GET)
	public String allExpenses(ModelMap map,HttpSession session) {
		try {
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<Booking> li = bookingService.selectAll(userId);
		map.put("bookList", li);
		return "booking_list";
		}catch(Exception e) {
			return "index";
		}
	}
	@RequestMapping(value = "/booking_update_form.htm",method = RequestMethod.GET)
	public String expenseUpdateForm(@RequestParam int bookingId,ModelMap map) {
		System.out.println(bookingId);
		
		Booking exp = bookingService.findbooking(bookingId);
		System.out.println(exp);
		map.put("booking", exp);
		
		return "booking_update_form";
	}
	@RequestMapping(value = "/booking_update1.htm",method = RequestMethod.GET)
	public String expenseUpdate(Booking booking,ModelMap map,HttpSession session) {
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		booking.setUserId(userId);
		System.out.println(userId);
		System.out.println(booking);
		bookingService.modifybooking(booking);
		System.out.println("======");
			
		List<Booking> li = bookingService.selectAll(userId);
		map.put("bookList", li);
		return "booking_list";
	}
	
	@RequestMapping(value = "/booking_delete.htm",method = RequestMethod.GET)
	public String expenseDelete(@RequestParam int bookingId,ModelMap map,HttpSession session) {
		
		bookingService.removebooking(bookingId); 
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<Booking> li = bookingService.selectAll(userId);
		map.put("bookList", li);
		return "booking_list";
	}
	@RequestMapping(value = "/booking_confirm.htm",method = RequestMethod.GET)
	public String bookingconfirm(Booking booking,int bookingId ,ModelMap map,HttpSession session) {
		try {
		int userId = ((User)session.getAttribute("user")).getUserId();
		booking.setUserId(userId);
		System.out.println(userId);
		System.out.println(booking);
		Booking exp = bookingService.findbooking(bookingId);
		System.out.println(exp);
		map.put("booking", exp);
			
//		List<Booking> li = bookingService.selectAll1(booking.getBookingId());
//		map.put("bookList1", li);
	return "confirm_list";
		}catch(Exception e) {
			return "index";
		}
	}
	
}