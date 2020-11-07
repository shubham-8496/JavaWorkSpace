package com.cdac.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {
		@Id
		@GeneratedValue
		private int userId;
		private String firstName;
		private String lastName;
		private String mobileNo;
		private String userName;
		private String userPass;
		public User(int userId, String firstName, String lastName, String userName, String userPass) {
			super();
			this.userId = userId;
			this.firstName = firstName;
			this.lastName = lastName;
			this.userName = userName;
			this.userPass = userPass;
		}
		public User(int userId, String firstName, String lastName, String mobileNo, String userName, String userPass) {
			super();
			this.userId = userId;
			this.firstName = firstName;
			this.lastName = lastName;
			this.mobileNo = mobileNo;
			this.userName = userName;
			this.userPass = userPass;
		}
		public String getMobileNo() {
			return mobileNo;
		}
		public void setMobileNo(String mobileNo) {
			this.mobileNo = mobileNo;
		}
		public User() {
			super();
		}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
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
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getUserPass() {
			return userPass;
		}
		public void setUserPass(String userPass) {
			this.userPass = userPass;
		}
		@Override
		public String toString() {
			return userId + " " + firstName + " " + lastName + " "
					+ userName + " " + userPass  ;
		}
		
}
