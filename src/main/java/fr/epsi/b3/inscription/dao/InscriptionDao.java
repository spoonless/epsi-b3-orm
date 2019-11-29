package fr.epsi.b3.inscription.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import fr.epsi.b3.inscription.model.Inscription;

@Repository
public class InscriptionDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public void save(Inscription inscription) {
		em.persist(inscription);
	}
	
	public List<Inscription> getAll() {
		return em.createQuery("select i from Inscription i order by i.date desc", Inscription.class)
				 .getResultList();
	}

}
