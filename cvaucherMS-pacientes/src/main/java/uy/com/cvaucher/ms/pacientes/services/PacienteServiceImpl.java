package uy.com.cvaucher.ms.pacientes.services;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import uy.com.cvaucher.ms.pacientes.domain.Paciente;
import uy.com.cvaucher.ms.pacientes.domain.SearchPacientes;
import uy.com.cvaucher.ms.pacientes.mybatis.mapper.PacientesMapper;


@Service("pacienteService")
public class PacienteServiceImpl implements PacienteService {

private Logger logger = LoggerFactory.getLogger(getClass());
	
	
	@Autowired
	private PacientesMapper pacientesMapper;
	
	@Override
	public List<Paciente> findAllPacientes()
	{
		logger.debug("findAllPacientes :");
		
		List<Paciente> pacientes = pacientesMapper.findAllPacientes();
		return pacientes;
		
	}
	
	@Override
	public Paciente findPacientesById(int id){
		logger.debug("findPacientesById :"+id);
		
		return pacientesMapper.findPacientesById(id);
	}
	
	@Override
	public Paciente findPacientesByCedula(int cedula)
	{
		logger.debug("findPacientesByCedula :"+cedula);
		
		Paciente pacientes = null;
		if(cedula ==0)
		{
			System.out.println("Cedula = 0");
			return null;
		}
		pacientes = pacientesMapper.findPacientesByCedula(cedula);
		return pacientes;
		
		
		
	}
	
	@Override
	public List<Paciente> findPacientesByNombre(String nombre)
	{
		logger.debug("findPacientesByNombre :"+nombre);
		
		List<Paciente> pacientes = pacientesMapper.findPacientesByNom(nombre);
		return pacientes;
	}
	
	@Override
	public List<Paciente> findPacientesByApellido(String apellido)
	{
		logger.debug("findPacientesByApellido :"+apellido);
		
		List<Paciente> pacientes = pacientesMapper.findPacientesByApellido(apellido);
		return pacientes;
	}
	
	@Override
	public void insertPacientes(Paciente pacientes)
	{
		logger.debug("insertPacientes :"+pacientes);
		
		pacientesMapper.insertPacientes(pacientes);
	}
	
	@Override
	public void updatePacientes(Paciente pacientes)
	{
		logger.debug("updatePacientes :"+pacientes);
		
		pacientesMapper.updatePacientes(pacientes);
	}
	
	@Override
	public void deletePacientes(int id)
	{
		logger.debug("deletePacientes :"+id);
		
		pacientesMapper.deletePacientes(id);
	}

	@Override
	public List<Paciente> findPacientes(SearchPacientes searchPacientes){
		logger.debug("findPacientes :"+ searchPacientes);
		List<Paciente> pacientes = null;
		
		if(searchPacientes.getCedula()!=0){
			 pacientes =  pacientesMapper.findPacientesByCedulaList(searchPacientes.getCedula());
		}
		else if(searchPacientes.getCedula() == 0 
				&& !searchPacientes.getPacNombre().equals("") 
				&& searchPacientes.getPacApellido().equals("")){
			pacientes = pacientesMapper.findPacientesByNom(searchPacientes.getPacNombre());
		}
		else if(searchPacientes.getCedula() == 0  
				&& searchPacientes.getPacNombre().equals("") 
				&& !searchPacientes.getPacApellido().equals("")){
			
			pacientes = pacientesMapper.findPacientesByApellido(searchPacientes.getPacApellido());
		}
		else if(searchPacientes.getCedula() == 0 
				&& !searchPacientes.getPacNombre().equals("")
				&& !searchPacientes.getPacApellido().equals("")){
			
			pacientes = pacientesMapper.findPacientesByNombreAndApellido(searchPacientes.getPacNombre(), searchPacientes.getPacApellido());
		}
		else if(searchPacientes.getCedula()== 0 
				&& searchPacientes.getPacNombre().equals("") 
				&& searchPacientes.getPacApellido().equals("")){
			
			pacientes = pacientesMapper.findAllPacientes();
		}
		
		return pacientes;
		
	}

	@Override
	public List<Paciente> findPacientesByNombreAndApellido(String nombre,
			String apellido) {
		
		List<Paciente> pacientes = pacientesMapper.findPacientesByNombreAndApellido(nombre, apellido);
		
		return pacientes;
	}

	@Override
	public void deletePacientesByCedula(int cedula) {
		pacientesMapper.deletePacientesByCedula(cedula);
		
	}

}
