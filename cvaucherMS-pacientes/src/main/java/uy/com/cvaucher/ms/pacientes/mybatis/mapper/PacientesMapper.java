package uy.com.cvaucher.ms.pacientes.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import uy.com.cvaucher.ms.pacientes.domain.Paciente;
import uy.com.cvaucher.ms.pacientes.domain.SearchPacientes;

public interface PacientesMapper {
	
	@Select("SELECT * FROM pacientes")
	@ResultMap("uy.com.cvaucher.ms.pacientes.mybatis.mapper.PacientesMapper.PacientesResult")
	List<Paciente> findAllPacientes();
	
	
	/*@Select("SELECT * FROM pacientes " +
			"WHERE cedula = #{cedula} " +
			"OR pac_nombre = #{pacNombre} " +
			"OR pac_apellido = #{pacApellido} " +
			"OR(pac_nombre = #{pacNombre} AND pac_apellido = #{pacApellido})")
	@ResultMap("uy.com.cvaucher.services.mappers.PacientesMapper.PacientesResult")*/
	List<Paciente> findPacientes(SearchPacientes searchPacientes);
	
	@Select("SELECT * FROM pacientes WHERE id = #{id}")
	@ResultMap("uy.com.cvaucher.ms.pacientes.mybatis.mapper.PacientesMapper.PacientesResult")
	Paciente findPacientesById(int id);
	
	@Select("SELECT * FROM pacientes WHERE nombre = #{nombre:VARCHAR}")
	@ResultMap("uy.com.cvaucher.ms.pacientes.mybatis.mapper.PacientesMapper.PacientesResult")
	List<Paciente> findPacientesByNom(String nombre);
	
	@Select("SELECT * FROM pacientes WHERE apellido = #{apellido:VARCHAR}")
	@ResultMap("uy.com.cvaucher.ms.pacientes.mybatis.mapper.PacientesMapper.PacientesResult")
	List<Paciente> findPacientesByApellido(String apellido);
	
	
	@Select("SELECT * FROM pacientes WHERE cedula = #{cedula}")
	@ResultMap("uy.com.cvaucher.ms.pacientes.mybatis.mapper.PacientesMapper.PacientesResult")
	Paciente findPacientesByCedula(int cedula);
	
	@Select("SELECT * FROM pacientes WHERE cedula = #{cedula}")
	@ResultMap("uy.com.cvaucher.ms.pacientes.mybatis.mapper.PacientesMapper.PacientesResult")
	List<Paciente> findPacientesByCedulaList(int cedula);
	
	
	@Select(("SELECT * FROM pacientes WHERE nombre = #{nombre}"
			+ " AND apellido = #{apellido}"))
	@ResultMap("uy.com.cvaucher.ms.pacientes.mybatis.mapper.PacientesMapper.PacientesResult")
	List<Paciente> findPacientesByNombreAndApellido(@Param("nombre")String nombre, @Param("apellido") String apellido);
	
	@Insert("INSERT INTO pacientes " +
						"(nombre, " +
						"apellido, " +
						"cedula, " +
						"ocupacion, " +
						"sociedad_medica, " +
						"emergencia_movil) " +
				"VALUES (#{nombre}, " +
						"#{apellido}, " +
						"#{cedula}, " +
						"#{ocupacion}, " +
						"#{sociedadMedica}, " +
						"#{emergenciaMovil} " +
						")")
	@Options(useGeneratedKeys=true, keyProperty="pacId") 
	void insertPacientes(Paciente pacientes);
	
	
	@Update("UPDATE pacientes " +
			"SET 	nombre =#{nombre}, " +
					"apellido =#{apellido}, " +
					"cedula =#{cedula}, " +			
					"ocupacion = #{ocupacion}, " +
					"sociedad_medica =#{sociedadMedica}, " +
					"emergencia_movil =#{emergenciaMovil} " +
					
			"WHERE 	 cedula = #{cedula}")
	void updatePacientes(Paciente pacientes);
	
	@Delete("DELETE FROM pacientes WHERE  id =#{pacId}")
	void deletePacientes(int pacId);
	
	@Delete("DELETE FROM pacientes WHERE cedula = #{cedula}")
	void deletePacientesByCedula(int cedula);
	
}
