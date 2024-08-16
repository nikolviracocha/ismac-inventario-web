package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.sucursalesDAO;
import com.distribuida.entities.sucursales;

@Controller
@RequestMapping("/sucursales")                 //path principal
public class sucursalesController {
	

	//JSP.-Java sever page,son las paginas web de tecnologia java
	
	@Autowired
	private sucursalesDAO sucursalesDAO;
	
	
	@GetMapping("/findAll")                   // path secundario
	public String findAll(Model model) {
		
		//try {
		
	
		List<sucursales> sucursales =sucursalesDAO.findAll();
		
		model.addAttribute("sucursales",sucursales);       //EJ: clave =keysucursaless , valor =sucursaless
		
		return "sucursales-listar";        // eso es el nombre del formulario ej. listar-sucursaless.html o listar-sucursaless.jsp
//	}catch (Exception e) {
//		//TODO: handle exception
//		e.printStackTrace();
		
//	}
		
	}
		
		
		@GetMapping("/findOne")
		public String findOne(@RequestParam("idsucursales") @Nullable Integer idsucursales 
			                 ,@RequestParam("opcion") @Nullable Integer opcion
			                 ,Model model
			     ) {
//			try {
		 
		
			  if(idsucursales !=null) {
				  sucursales sucursales = sucursalesDAO.findOne(idsucursales);
				  model.addAttribute("sucursales",sucursales);
				  
			  }
			  
			  if(opcion ==1) return "sucursales-add";  //actualizacion
			  else return "sucursales-del";            //eliminacion
				
//			}catch (Exception e) {
//				//TODO: handle exception
//				e.printStackTrace();  
			  
//			}
			  
			  }
		
		@PostMapping("/add")
		public String add(@RequestParam("idsucursales") @Nullable Integer idsucursales
				         ,@RequestParam("nombre") @Nullable String nombre
				         ,@RequestParam("direccion") @Nullable String direccion
				         ,@RequestParam("telefono") @Nullable String telefono
				         ,Model model
				         
				 ) {
			
//			try {
		
			if(idsucursales == null) {
			sucursales sucursales = new sucursales(0,nombre,direccion,telefono);
			sucursalesDAO.add(sucursales);
			
			}else {
				
				sucursales sucursales2 = new sucursales(idsucursales,nombre,direccion,telefono);
				sucursalesDAO.up(sucursales2);
			}
			
		
		return "redirect:/sucursales/findAll";     //ir a formulario web por path o url
		
//		}catch (Exception e) {
//		//TODO: handle exception
//		}
		
		
		
		
	} 
		@GetMapping("/del")
		public String del(@RequestParam("idsucursales") @Nullable Integer idsucursales) {
		    sucursalesDAO.del(idsucursales);
		    return "redirect:/sucursales/findAll";
		}

//          }catch (Exception e) {
//      		//TODO: handle exception
//        }
        	  
          }

