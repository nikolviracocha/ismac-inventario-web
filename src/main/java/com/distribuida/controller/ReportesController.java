package com.distribuida.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/reportes")


public class ReportesController {

	
@GetMapping("/reporte1")
	public String reportes() {
		return"reportes";
	}
	
	
	
	
	
	
}
