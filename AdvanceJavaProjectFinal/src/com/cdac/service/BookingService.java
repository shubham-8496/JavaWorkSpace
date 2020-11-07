package com.cdac.service;

import java.util.List;

import com.cdac.dto.Booking;


public interface BookingService {
	public void addbooking(Booking booking);
	public void removebooking(int bookingId);
	Booking findbooking(int bookingId);
	void modifybooking(Booking booking);
	List<Booking>selectAll(int userId);
	List<Booking>selectAll1(int bookingId);
}
