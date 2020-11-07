package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Booking;


@Repository
public class BookDaoImple implements BookDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Override
	public void insertbooking(Booking booking) {
		hibernateTemplate.execute(new HibernateCallback< Void >() {

			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
				session.save(booking);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public void deletebooking(int bookingId) {
		hibernateTemplate.execute(new HibernateCallback< Void >() {

			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
				session.delete(new Booking(bookingId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public Booking selectbooking(int bookingId) {
		Booking booking = hibernateTemplate.execute(new HibernateCallback<Booking>() {

			public Booking doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
				Booking ex = (Booking) session.get(Booking.class, bookingId);
				tr.commit();
				session.flush();
				session.close();
				return ex;
			}
		});
		return booking;
	}

	@Override
	public void updatebooking(Booking booking) {
		hibernateTemplate.execute(new HibernateCallback< Void >() {

			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
				session.update(booking);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public List<Booking> selectAll(int userId) {
		List<Booking> bookList = hibernateTemplate.execute(new HibernateCallback<List<Booking>>() {

			@Override
			public List<Booking> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Booking where userId = ?");
				q.setInteger(0, userId);
				List<Booking> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}    
			
		});
		return bookList;
	}

	@Override
	public List<Booking> selectAll1(int bookingId) {
		List<Booking> bookList = hibernateTemplate.execute(new HibernateCallback<List<Booking>>() {

			@Override
			public List<Booking> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Booking where bookingId = ?");
				q.setInteger(0, bookingId);
				List<Booking> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}    
			
		});
		return bookList;
	}

}
