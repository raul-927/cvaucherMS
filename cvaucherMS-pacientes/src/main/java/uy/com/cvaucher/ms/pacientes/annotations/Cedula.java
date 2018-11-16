package uy.com.cvaucher.ms.pacientes.annotations;

import static java.lang.annotation.ElementType.*;
import static java.lang.annotation.RetentionPolicy.*;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import javax.validation.Constraint;
import javax.validation.Payload;

import uy.com.cvaucher.ms.pacientes.validators.ValidoCedula;




@Target({ METHOD, FIELD, ANNOTATION_TYPE, CONSTRUCTOR, PARAMETER })
@Retention(RUNTIME)
@Constraint(validatedBy = ValidoCedula.class)
@Documented
public @interface Cedula 
{

	String message();
	
	Class<?>[] groups() default {};
    
    Class<? extends Payload>[] payload() default {};

}
