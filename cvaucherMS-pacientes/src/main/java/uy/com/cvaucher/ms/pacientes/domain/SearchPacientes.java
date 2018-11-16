package uy.com.cvaucher.ms.pacientes.domain;

import java.io.Serializable;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;

public class SearchPacientes implements Serializable
{

	private static final long serialVersionUID = 1L;
	
	@NotNull(message ="ERROR; Debe ingresar un nro de cedula valido")
	@Digits(integer=8, message = "ERROR; Debe ingresar un numero de cedula de 8 digitos", fraction=0)
	private int cedula;
	
	private String pacNombre;
	private String pacApellido;
	
	public int getCedula() 
	{
		return cedula;
	}
	public void setCedula(int cedula) 
	{
		
		this.cedula = cedula;
	}
	
	
	public String getPacNombre() 
	{
		return pacNombre;
	}
	public void setPacNombre(String pacNombre) 
	{
		this.pacNombre = pacNombre;
	}
	
	
	public String getPacApellido() 
	{
		return pacApellido;
	}
	public void setPacApellido(String pacApellido) 
	{
		this.pacApellido = pacApellido;
	}

}
