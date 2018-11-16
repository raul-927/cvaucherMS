package uy.com.cvaucher.ms.pacientes.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.remoting.httpinvoker.HttpInvokerServiceExporter;

import uy.com.cvaucher.ms.pacientes.services.PacienteService;

/*
import javax.sql.DataSource;
import org.apache.ibatis.datasource.pooled.PooledDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.annotation.Bean;
*/
/**
 * @author Raul Hernandez
 *
 */
@Configuration
@EnableAspectJAutoProxy
@ComponentScan("uy.com.cvaucher.ms.pacientes")
public class RootContextConfig {
	

	@Autowired
	private PacienteService pacienteService;
	
	@Bean(name="/cvaucher.pacientes")
	public HttpInvokerServiceExporter httpPacientesService() {
		HttpInvokerServiceExporter httpInvokerServiceExporter = new HttpInvokerServiceExporter();
		httpInvokerServiceExporter.setService(pacienteService);
		httpInvokerServiceExporter.setServiceInterface(PacienteService.class);
		return httpInvokerServiceExporter;
	}
	
	
	
	
}
