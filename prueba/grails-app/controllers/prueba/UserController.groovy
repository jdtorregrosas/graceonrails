package prueba



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

	def listar ={
		redirect(action: "index")
	}
	def login={
		//def p = new User(usuario: "Fred", email: "fred@hotmail.com", password: "fred")
		//def p2 = new User(usuario: "Maria", email: "maria@hotmail.com", password: "maria")
		//p.save()
		//p2.save()
		def p2= User.list()
		//def p3 = User.findByEmail(params.username)
		//print p3.usuario + "<---- p3"
		print p2
		print params.usuario+" <--- username"
		
		try{
			if(params.usuario == User.findByUsuario(params.usuario).usuario &&
				params.password == User.findByUsuario(params.usuario).password){
				flash.message= "coneccion exitosa"
				session.user=params.usuario
				session.roll=User.findByUsuario(params.usuario).roll
				//print session.roll + "ROLL"
				redirect(action: "listar")
				//print "entro!!"
			}else{
				flash.message= "El correo o el password son invalidos, por favor intente de nuevo"
				redirect(action:"index")
			}
		}catch(Exception e){
			flash.message= "El correo o el password son invalidos, por favor intente de nuevo"
			redirect(action:"index")
		}
	}
	def logout={
		session.user=null
		redirect(action: "index")
	}

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
}