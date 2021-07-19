package com.generation.agenzia.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.generation.agenzia.entities.Prenotazioni;
import com.generation.agenzia.service.PrenotazioniService;

//@Controller
@RequestMapping("/prenotazioni")
public class PrenotazioniMVC {

	@Autowired
	private PrenotazioniService ps;
	
	
	@RequestMapping("")
	public String prenotazioni(Model m) {
		
		List<Prenotazioni> prenotazioni = ps.findPrenotazioni();
		
		m.addAttribute("prenotazioni", prenotazioni);
		return "prenotazioni";
		
	}
	
	
	
	
	
	
	
	
}
