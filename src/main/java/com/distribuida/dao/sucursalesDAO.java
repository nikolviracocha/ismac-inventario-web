package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.sucursales;

public interface sucursalesDAO {
	
	//CRUD Basico
	
	public List<sucursales> findAll();
	
	public sucursales findOne(int id);
	
	public void add(sucursales sucursales);
	
	public void up(sucursales sucursales);
	
	public void del(int id);
	
	//CRUD Avanzado
	
	
	
	
	
	
	

}
