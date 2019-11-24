package fr.epsi.pizzacli;

import java.util.Scanner;

public class PizzaCli {
	
	private Scanner scanner = new Scanner(System.in);
	private PizzaDao pizzaDao;
	
	public PizzaCli(PizzaDao pizzaDao) {
		this.pizzaDao = pizzaDao;
	}
	
	public void run() {
		while(true) {
			afficherChoix();
			System.out.println("Votre choix ?");
			String choix = scanner.next();
			switch (choix) {
			case "1":
				afficherMenu();
				break;
			case "2":
				chercherPizza();
				break;
			case "3":
				passerCommande();
				break;
			case "4":
				System.out.println("Au revoir.");
				return;
			default:
				System.out.println("Choix incorrect !");
			}
		}
	}

	private void chercherPizza() {
		System.out.println("Saisissez le nom d'une pizza :");
		String nom = scanner.next();
		Pizza pizza = pizzaDao.findPizza(nom);
		if (pizza == null) {
			System.out.println("Auncune pizza trouvée !");
		} else {
			afficherPizza(pizza);
		}
	}

	private void afficherChoix() {
		System.out.println(
				"Que voulez-vous faire ?\n"
						+ " 1) Afficher le menu\n"
						+ " 2) Chercher une pizza\n"
						+ " 3) Passer une commande\n"
						+ " 4) Quitter\n");
	}

	private void afficherMenu() {
		for (Pizza pizza : pizzaDao.getListePizza()) {
			afficherPizza(pizza);
		}
	}

	private void afficherPizza(Pizza pizza) {
		System.out.printf("* %s (%.02f €)\n", pizza.getNom(), pizza.getPrix() / 100.0);
	}

	private void passerCommande() {
		// TODO
		System.out.println("Fonctionnalité pas encore implémentée !");
	}
	
}
