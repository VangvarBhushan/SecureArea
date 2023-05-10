package com.project.safevibe.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.project.safevibe.dto.Admin;
import com.project.safevibe.dto.CrimeRating;
import com.project.safevibe.dto.Feedback;
import com.project.safevibe.dto.User;


@Repository
public class AdminDaoImple implements AdminDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public void save_feedback( final Feedback feedback) {	
		hibernateTemplate.execute(new HibernateCallback<List<Admin>>() {
			public List<Admin> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(feedback);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}
	public List<Admin> getAll() {
		List<Admin> ul = hibernateTemplate.execute(new HibernateCallback<List<Admin>>() {
			public List<Admin> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				
				Query q = session.createQuery("from Admin");
				List<Admin> ulist = q.list();
				t.commit();
				session.flush();
				session.close();
				return ulist;
			}
		
		});
		return ul;
	}


	public List<CrimeRating> getAllRating() {	
		List<CrimeRating> ul = hibernateTemplate.execute(new HibernateCallback<List<CrimeRating>>() {
			public List<CrimeRating> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				
				Query q = session.createQuery("from CrimeRating");
				List<CrimeRating> ulist = q.list();
				t.commit();
				session.flush();
				session.close();
				return ulist;
			}
		
		});
		return ul;
	}


	public boolean validateAdmin(final Admin admin) {		
		List<Admin> ul = hibernateTemplate.execute(new HibernateCallback<List<Admin>>() {
			public List<Admin> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from Admin where adminEmail = ? and adminPass = ?");
				q.setString(0, admin.getAdminEmail());
				q.setString(1, admin.getAdminPass());
				List<Admin> adminList = q.list();
				t.commit();
				session.flush();
				session.close();
				return adminList;
			}
		});
		if(!ul.isEmpty()) {
			return true;
		}	
		return false;
	}
	
	
	public boolean validateUser(final User user) {	
		List<User> ul = hibernateTemplate.execute(new HibernateCallback<List<User>>() {
			public List<User> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				
				System.out.println("checking user");
				
				Query q = session.createQuery("from User where useremail = ? and userpassword = ?");
				q.setString(0, user.getUseremail());
				q.setString(1, user.getUserpassword());
				List<User> userList = q.list();
				t.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		if(!ul.isEmpty()) {
			return true;
		}	
		return false;
	}

	public CrimeRating checkCity(final String city) {	
		List<CrimeRating> ul = hibernateTemplate.execute(new HibernateCallback<List<CrimeRating>>() {
			public List<CrimeRating> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from CrimeRating where City = ?");
				q.setString(0, city);
				List<CrimeRating> userList = q.list();
				t.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		return ul.get(0);
	}


	public void saveUser(final User user) {	
		hibernateTemplate.execute(new HibernateCallback<List<Admin>>() {
			public List<Admin> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(user);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}
	public void save(final Admin admin) {
		hibernateTemplate.execute(new HibernateCallback<List<Admin>>() {
			public List<Admin> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(admin);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}
	
	public List<Feedback> getAllfeedback() {
		List<Feedback> ul = hibernateTemplate.execute(new HibernateCallback<List<Feedback>>() {
			public List<Feedback> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				
				Query q = session.createQuery("from Feedback");
				List<Feedback> ulist = q.list();
				t.commit();
				session.flush();
				session.close();
				return ulist;
			}
		
		});
		return ul;
	}

	public void saveRate(final CrimeRating crate) {
		hibernateTemplate.execute(new HibernateCallback<List<Admin>>() {
			public List<Admin> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(crate);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}
	
	public CrimeRating getCrimeById(final int id) {
		List<CrimeRating> cl = hibernateTemplate.execute(new HibernateCallback<List<CrimeRating>>() {
			public List<CrimeRating> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from CrimeRating where id = ?");
				q.setInteger(0, id);
				List<CrimeRating> crimeList = q.list();
				t.commit();
				session.flush();
				session.close();
				return crimeList;
			}
		});
		if(cl.isEmpty()) {
			return null;
		}else {
			return cl.get(0);
		}
		
		
	}



	public void editCrime(final CrimeRating cr) {
		hibernateTemplate.execute(new HibernateCallback<List<CrimeRating>>() {
			public List<CrimeRating> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.update(cr);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}



	public void deleteCrimeById(final int id) {
		hibernateTemplate.execute(new HibernateCallback<List<CrimeRating>>() {
			public List<CrimeRating> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.delete(new CrimeRating(id));
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	
	

}
