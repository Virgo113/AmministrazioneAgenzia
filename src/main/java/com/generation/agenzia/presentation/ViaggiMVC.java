package com.generation.agenzia.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.generation.agenzia.entities.Viaggio;
import com.generation.agenzia.service.ViaggiService;

@Controller
@RequestMapping("/list")
public class ViaggiMVC {

	@Autowired
	private ViaggiService vs;
	
	@RequestMapping("")
	public String elenco(Model m) {
		List<Viaggio> viaggi = vs.findViaggi();
		
		m.addAttribute("viaggi", viaggi);
		return "list";
	}
	
	
	@RequestMapping("/{id}")
	public String viaggio(@PathVariable("id") int id, Model m) {
		Viaggio v = vs.findViaggioById(id);
		
		m.addAttribute("viaggio", v);
//		System.out.println(v);
		return "dettaglio";
	}
	
	
	@RequestMapping("/{id}/elimina")
	public String eliminaviaggio(@PathVariable("id") int id) {
		vs.delViaggio(id);
		

		return "redirect:/list";
	}
	
		
	@RequestMapping(method = RequestMethod.POST)
	public String salvaviaggio(@ModelAttribute Viaggio v, Model m) {
		vs.updViaggio(v);
		
		m.addAttribute("viaggio", v);
		

		return "redirect:/list";
	}
	
	@GetMapping(value = "aggiungi")
	public String aggiungiviaggio(){
		return "aggiungi";
	}

	
	@PostMapping("/aggiungi")
	public String creaviaggio(@ModelAttribute Viaggio v) {
		vs.addViaggio(v);
		
		
		return "redirect:/list";
	}
	
	
}
