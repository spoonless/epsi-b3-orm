package fr.epsi.pizzacli;

public class Application {

	public static void main(String[] args) {
		PizzaDao pizzaDao = new PizzaDao();
		new PizzaCli(pizzaDao).run();
	}

}
