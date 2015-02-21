package prueba

class User {
	String nombre
	String nombre2
	String apellido
	String apellido2
	String cedula
	String usuario
	String email
	String password
	String confirmPassword
	String roll 
	
	String toString(){"$email"}
    static constraints = {
		nombre nullable:false, blank:false, size:3..15
		nombre2 nullable:true, blank:true, size:3..15
		apellido nullable: false, blank: false, size:3..15
		apellido2 nullable: false, blank: true, size:3..15
		cedula size:6..15,nullable:false, blank:false
		usuario unique:true,nullable:false, blank:false, size:6..20
		email unique:true,nullable:false, blank:false, email:true
		password nullable:false, blank:false, password:true
		confirmPassword nullable:false, blank:false, password:true
		roll nullable:false, blank: false, inList: (["Administrador" , "Vendedor","Proveedor","Cliente"]) 
    }
}
