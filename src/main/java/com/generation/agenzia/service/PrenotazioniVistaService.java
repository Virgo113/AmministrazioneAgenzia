package com.generation.agenzia.service;

import java.util.List;

import com.generation.agenzia.entities.PrenotazioneVista;


public interface PrenotazioniVistaService {

	List<PrenotazioneVista> findPrenotazioniVista();
	public PrenotazioneVista findPrenotazioneVistaById(int id);
}
