package fr.epsi.b3.inscription.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.epsi.b3.inscription.dao.InscriptionDao;
import fr.epsi.b3.inscription.model.Inscription;

@Service
public class InscriptionService {

	@Autowired
	private InscriptionDao inscriptionDao;
	
	@Transactional(rollbackFor = PersonneMineureException.class)
	public Inscription inscrire(DonneesPersonnellesDto donneesPersonnelles) throws PersonneMineureException {
		if (! donneesPersonnelles.isMajeur()) {
			throw new PersonneMineureException("Seule une personne majeure peut s'inscrire");
		}
		Inscription inscription = new Inscription(donneesPersonnelles.getNom());
		inscriptionDao.save(inscription);
		return inscription;
	}
	
	public List<Inscription> getAll() {
		return inscriptionDao.getAll();
	}
	
}
