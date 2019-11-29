package fr.epsi.b3.inscription.service;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class DonneesPersonnellesDto {

	@NotNull(message = "Vous devez renseigner le nom !")
	@Size(min = 1, message = "Vous devez renseigner le nom !")
	private String nom;

	@NotNull(message = "Vous devez renseigner l''âge !")
	@Min(value = 1, message="L''âge doit être supérieur à 0 !")
	private Integer age;

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}
	
	public boolean isMajeur() {
		return this.age >= 18;
	}

}
