package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="book")
public class Booking {
	@Id
	@GeneratedValue
	@Column (name = "bookingId")
	private int bookingId;
	@Column (name = "firstName")
	private String firstName;
	@Column (name = "lastName")
	private String lastName;
	@Column (name = "mobileNo")
	private String mobileNo;
	@Column (name = "email")
	private String email;
	@Column (name = "gender")
	private String gender;
	@Column (name = "age")
	private int age;
	@Column (name = "b_date")
	private String date;
	@Column (name = "amount")
	private int Amount;
	@Column (name = "location")
	private String location;
	@Column (name = "no_of_person")
	private int noOfPerson;
	@Column (name = "userId")
	private int userId;
	public int getBookingId() {
		return bookingId;
	}
	
	public Booking(int bookingId) {
		super();
		this.bookingId = bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getAmount() {
		return Amount;
	}
	public void setAmount(int amount) {
		Amount = amount;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getNoOfPerson() {
		return noOfPerson;
	}
	public void setNoOfPerson(int noOfPerson) {
		this.noOfPerson = noOfPerson;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Booking(int bookingId, String firstName, String lastName, String mobileNo, String email, String gender,
			int age, String date, int amount, String location, int noOfPerson, int userId) {
		super();
		this.bookingId = bookingId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.mobileNo = mobileNo;
		this.email = email;
		this.gender = gender;
		this.age = age;
		this.date = date;
		Amount = amount;
		this.location = location;
		this.noOfPerson = noOfPerson;
		this.userId = userId;
	}
	public Booking() {
		super();
	}
	@Override
	public String toString() {
		return "Booking [bookingId=" + bookingId + ", firstName=" + firstName + ", lastName=" + lastName + ", mobileNo="
				+ mobileNo + ", email=" + email + ", gender=" + gender + ", age=" + age + ", date=" + date + ", Amount="
				+ Amount + ", location=" + location + ", noOfPerson=" + noOfPerson + ", userId=" + userId + "]";
	}
	
}
