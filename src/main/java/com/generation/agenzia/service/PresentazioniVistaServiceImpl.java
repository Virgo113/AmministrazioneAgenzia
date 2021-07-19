package com.generation.agenzia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.generation.agenzia.entities.PrenotazioneVista;
import com.generation.agenzia.repos.PrenotazioneVistaDAO;

@Service
public class PresentazioniVistaServiceImpl implements PrenotazioniVistaService {

	@Autowired
	PrenotazioneVistaDAO pvd;
	
	
	@Override
	public List<PrenotazioneVista> findPrenotazioniVista() {
		return pvd.findAll();
	}

	@Override
	public PrenotazioneVista findPrenotazioneVistaById(int id) {
		return pvd.findById(id).get();
	}

}
