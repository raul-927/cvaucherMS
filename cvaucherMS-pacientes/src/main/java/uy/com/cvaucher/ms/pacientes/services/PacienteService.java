package uy.com.cvaucher.ms.pacientes.services;

import java.util.List;

import uy.com.cvaucher.ms.pacientes.domain.Paciente;
import uy.com.cvaucher.ms.pacientes.domain.SearchPacientes;


public interface PacienteService {
	Paciente findPacientesById(int id);
	Paciente findPacientesByCedula(int cedula);
	
	List<Paciente> findAllPacientes();
	List<Paciente> findPacientesByNombre(String nombre);
	List<Paciente> findPacientesByApellido(String apellido);
	List<Paciente> findPacientes(SearchPacientes searchPacientes);
	List<Paciente> findPacientesByNombreAndApellido(String nombre, String apellido);
	void insertPacientes(Paciente pacientes);
	void updatePacientes(Paciente pacientes);
	void deletePacientes(int id);
	void deletePacientesByCedula(int cedula);
	

}
