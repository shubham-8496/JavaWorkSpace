package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.BookDao;
import com.cdac.dto.Booking;
@Service
public class BookingServiceImple implements BookingService {
	@Autowired
	private BookDao bookDao;
	
	@Override
	public void addbooking(Booking booking) {
		bookDao.insertbooking(booking);
		
	}

	@Override
	public void removebooking(int bookingId) {
		bookDao.deletebooking(bookingId);
		
	}

	@Override
	public Booking findbooking(int bookingId) {
		// TODO Auto-generated method stub
		return bookDao.selectbooking(bookingId);
	}

	@Override
	public void modifybooking(Booking booking) {
		bookDao.updatebooking(booking);
	}

	@Override
	public List<Booking> selectAll(int userId) {
		// TODO Auto-generated method stub
		return bookDao.selectAll(userId);
	}

	@Override
	public List<Booking> selectAll1(int bookingId) {
		// TODO Auto-generated method stub
		return bookDao.selectAll(bookingId);
	}

}
