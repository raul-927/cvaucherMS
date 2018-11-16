package uy.com.cvaucher.ms.pacientes.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import uy.com.cvaucher.ms.pacientes.services.PacienteService;
import uy.com.cvaucher.ms.pacientes.domain.Paciente;

@RestController
public class PacientesController {
	
	@Autowired
	private PacienteService pacienteService;
	
	@RequestMapping(value ="/pacientes", method =RequestMethod.GET, 
			produces ={MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public ResponseEntity<List<Paciente>> getAllPacientes(){
		HttpHeaders responseHeaders = new HttpHeaders();
		List<Paciente> pacientes = this.pacienteService.findAllPacientes();
		
		return new ResponseEntity<List<Paciente>>(pacientes,responseHeaders, HttpStatus.OK);
	}
	
	@RequestMapping(value ="/pacientes/{id}", method =RequestMethod.GET, 
			produces ={MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public ResponseEntity<Paciente> getPaciente(@PathVariable int id){
		HttpHeaders responseHeaders = new HttpHeaders();
		Paciente paciente = this.pacienteService.findPacientesById(id);
		
		return new ResponseEntity<Paciente>(paciente,responseHeaders, HttpStatus.OK);
	}
	
	@RequestMapping(value ="/pacientes", method =RequestMethod.POST,
			consumes ={MediaType.APPLICATION_JSON_VALUE},
			produces ={MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public ResponseEntity<Paciente> setPaciente(@RequestBody @Valid Paciente paciente, BindingResult bindingResult){
		HttpHeaders responseHeaders = new HttpHeaders();
		if(bindingResult.hasErrors()) {
			return new ResponseEntity<Paciente>(null,responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
		}
		this.pacienteService.insertPacientes(paciente);
		
		return new ResponseEntity<Paciente>(paciente,responseHeaders, HttpStatus.OK);
	}
	
	@RequestMapping(value ="/pacientes", method =RequestMethod.PUT,
			consumes ={MediaType.APPLICATION_JSON_VALUE},
			produces ={MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public ResponseEntity<Paciente> updatePaciente(@RequestBody @Valid Paciente paciente, BindingResult bindingResult){
		HttpHeaders responseHeaders = new HttpHeaders();
		if(bindingResult.hasErrors()) {
			return new ResponseEntity<Paciente>(null,responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
		}
		this.pacienteService.updatePacientes(paciente);
		
		return new ResponseEntity<Paciente>(paciente,responseHeaders, HttpStatus.OK);
	}
	
	@RequestMapping(value ="/pacientes/{id}", method =RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<Paciente> deletePaciente(@PathVariable int id){
		HttpHeaders responseHeaders = new HttpHeaders();
		this.pacienteService.deletePacientes(id);
		
		return new ResponseEntity<Paciente>(null,responseHeaders, HttpStatus.OK);
	}
	

}
