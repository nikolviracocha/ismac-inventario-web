package com.distribuida.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="sucursales")
public class sucursales {
	
	// Atributos
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY )
	@Column(name = "id_sucursales")
	private int idsucursales;
	@Column(name = "Nombre")
	private String Nombre;
	@Column(name = "Direccion")
	private String Direccion;
	@Column(name = "Telefono")
	private String Telefono;

	
	// Constructor
	
	public sucursales() {}


	public sucursales(int idsucursales, String nombre, String direccion, String telefono) {
		
		this.idsucursales = idsucursales;
		this.Nombre = nombre;
		this.Direccion = direccion;
		this.Telefono = telefono;
	}


	public int getIdsucursales() {
		return idsucursales;
	}


	public void setIdsucursales(int idsucursales) {
		this.idsucursales = idsucursales;
	}


	public String getNombre() {
		return Nombre;
	}


	public void setNombre(String nombre) {
		Nombre = nombre;
	}


	public String getDireccion() {
		return Direccion;
	}


	public void setDireccion(String direccion) {
		Direccion = direccion;
	}


	public String getTelefono() {
		return Telefono;
	}


	public void setTelefono(String telefono) {
		Telefono = telefono;
	}


	@Override
	public String toString() {
		return "sucursales [idsucursales=" + idsucursales + ", Nombre=" + Nombre + ", Direccion=" + Direccion
				+ ", Telefono=" + Telefono + "]";
	}
	
}