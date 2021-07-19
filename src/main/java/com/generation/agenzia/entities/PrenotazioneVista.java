package com.generation.agenzia.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "prenotazioni_v")
public class PrenotazioneVista {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String nome, cognome, destinazione;
	
	private int partecipanti;

	
	public PrenotazioneVista() {
	}


	public PrenotazioneVista(String nome, String cognome,
			String destinazione, int partecipanti) {
		this.nome = nome;
		this.cognome = cognome;
		this.destinazione = destinazione;
		this.partecipanti = partecipanti;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getCognome() {
		return cognome;
	}


	public void setCognome(String cognome) {
		this.cognome = cognome;
	}


	public String getDestinazione() {
		return destinazione;
	}


	public void setDestinazione(String destinazione) {
		this.destinazione = destinazione;
	}


	public int getPartecipanti() {
		return partecipanti;
	}


	public void setPartecipanti(int partecipanti) {
		this.partecipanti = partecipanti;
	}


	@Override
	public String toString() {
		return "PrenotazioneVista [id=" + id + ", nome=" + nome + ", cognome="
				+ cognome + ", destinazione=" + destinazione + ", partecipanti="
				+ partecipanti + "]";
	}
	
	
	
	
	
	
	
	
	
}
