package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Booking;


public interface BookDao {
	public void insertbooking(Booking booking);
	public void deletebooking(int bookingId);
	Booking selectbooking(int bookingId);
	void updatebooking(Booking booking);
	List<Booking>selectAll(int userId);
	List<Booking>selectAll1(int bookingId);
}
