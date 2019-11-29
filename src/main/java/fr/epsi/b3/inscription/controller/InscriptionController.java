package fr.epsi.b3.inscription.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import fr.epsi.b3.inscription.model.Inscription;
import fr.epsi.b3.inscription.service.DonneesPersonnellesDto;
import fr.epsi.b3.inscription.service.InscriptionService;
import fr.epsi.b3.inscription.service.PersonneMineureException;

@Controller
public class InscriptionController {
	
	@Autowired
	private InscriptionService inscriptionService;
	
	@GetMapping("/inscription")
	public String afficherFomulaire(DonneesPersonnellesDto donneesPersonnellesDto) {
		return "formulaire-inscription";
	}

	@PostMapping("/inscription")
	public String inscrire(@Validated DonneesPersonnellesDto donneesPersonnellesDto, BindingResult bindingResult, Model model){
		if (bindingResult.hasErrors()) {
			return "formulaire-inscription";
		}
		try {
			Inscription inscription = inscriptionService.inscrire(donneesPersonnellesDto);
			model.addAttribute("inscription", inscription);
			return "inscription";
		} catch (PersonneMineureException e) {
			bindingResult.addError(new FieldError("donneesPersonnellesDto", "age", e.getMessage()));
			return "formulaire-inscription";
		}
	}
	
}
