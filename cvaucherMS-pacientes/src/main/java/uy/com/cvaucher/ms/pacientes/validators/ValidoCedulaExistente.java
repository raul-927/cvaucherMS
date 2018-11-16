package uy.com.cvaucher.ms.pacientes.validators;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import uy.com.cvaucher.ms.pacientes.annotations.CedulaExistente;
import uy.com.cvaucher.ms.pacientes.domain.NroVerifCedula;
import uy.com.cvaucher.ms.pacientes.domain.Paciente;
import uy.com.cvaucher.ms.pacientes.services.PacienteService;

public class ValidoCedulaExistente extends NroVerifCedula implements ConstraintValidator<CedulaExistente, Integer>{
	
	@Autowired
	private PacienteService pacienteService;
	
	
	@Override
	public boolean isValid(Integer value, ConstraintValidatorContext context){
		boolean control = true;
		boolean NroVerif = this.nroCedula(value);
		if(NroVerif){
			int cedula = value;
			Paciente paciente = pacienteService.findPacientesByCedula(cedula);
			try{
				if(paciente !=null){
					control=false;
				}
					
			}
			catch(NullPointerException e){
				control = true;
			}
		}
		return control;
	}	
	@Override
	public void initialize(CedulaExistente constraintAnnotation) {
		// TODO Auto-generated method stub
		
	}
}
