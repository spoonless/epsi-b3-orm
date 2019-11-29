package fr.epsi.b3.inscription.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import fr.epsi.b3.inscription.model.Inscription;
import fr.epsi.b3.inscription.service.InscriptionService;

@Controller
public class ListeInscriptionsController {
	
	@Autowired
	private InscriptionService inscriptionService;
	
	@GetMapping("/admin/inscriptions")
	public String afficherInscriptions(Model model) {
		List<Inscription> inscriptions = inscriptionService.getAll();
		model.addAttribute("inscriptions", inscriptions);
		return "inscriptions";
	}
	
}
