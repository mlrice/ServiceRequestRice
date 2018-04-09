package edu.dmacc.spring.servicerequest;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;



public class RequestDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("ServiceRequestRice");
	
	public void insertRequest(Request requestToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(requestToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Request> getAllRequests() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select r from Request r";
		TypedQuery<Request>typedQuery = em.createQuery(q, Request.class);
		List<Request>all = typedQuery.getResultList();
		return all;
	}

}
