package fr.epsi.b3.inscription.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccueilController {

	@GetMapping("/")
	public String accueil() {
		return "accueil";
	}
	
}
