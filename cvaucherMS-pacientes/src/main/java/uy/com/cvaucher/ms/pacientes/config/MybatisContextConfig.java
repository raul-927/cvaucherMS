package uy.com.cvaucher.ms.pacientes.config;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@MapperScan(value="uy.com.cvaucher.ms.pacientes.mybatis.mapper")
public class MybatisContextConfig {
	
	@Value("${jdbc.driverClassName}")
	private String className;
	
	@Value("${jdbc.url}")
	private String url;
	
	@Value("${jdbc.username}")
	private String userName;
	
	@Value("${jdbc.password}")
	private String passWord;
	
	@Bean
	public DriverManagerDataSource dataSource() {
		DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
		driverManagerDataSource.setDriverClassName(this.className);
		driverManagerDataSource.setUrl(this.url);
		driverManagerDataSource.setUsername(this.userName);
		driverManagerDataSource.setPassword(this.passWord);
		return driverManagerDataSource;
		
	}
	
	@Bean
	public DataSourceTransactionManager transactionManager() {
		DataSourceTransactionManager dataSourceTransactionManager = new DataSourceTransactionManager();
		dataSourceTransactionManager.setDataSource(this.dataSource());
		
		return dataSourceTransactionManager;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception{
		
		String typeAliasesPackage 	="uy.com.cvaucher.ms.pacientes.domain";
		String typeHandlersPackage 	="uy.com.cvaucher.ms.pacientes.typehandlers";
		String relativePath 		="classpath*:uy/com/cvaucher/services/mybatis/mappers/*.xml";
		PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
	    Resource[] mapperLocations = resolver.getResources(relativePath);
		SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
		sqlSessionFactory.setDataSource(this.dataSource());
		sqlSessionFactory.setTypeAliasesPackage(typeAliasesPackage);
		sqlSessionFactory.setTypeHandlersPackage(typeHandlersPackage);
		//sqlSessionFactory.setMapperLocations(mapperLocations);
		
		return (SqlSessionFactory) sqlSessionFactory.getObject();
	}
	
	@Bean
	public SqlSessionTemplate sqlSession() throws Exception {
		SqlSessionTemplate sqlSessionTemplate= new SqlSessionTemplate(sqlSessionFactory());
		return sqlSessionTemplate;
	}
	
	
}
