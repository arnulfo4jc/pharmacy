package org.mt
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class UserController {
	static allowedMethods = [
        create:["GET","POST"],
        show:"GET",
        list:"GET",
        edit:"GET",
        delete:["GET", "POST"],
        update:"PUT"
    ]

    def springSecurityService
    def passwordEncoder

    def index() { }

    def beforeInterceptor = [action: this.&passwordTest, only: 'create']

	private passwordTest(){
		if (params.password != params.password2) {
			flash.message = "Las contraseñas no coinciden, vuelva a escribirlas"
			redirect(action:"create")
			return false
		}
	}

    def create(){
    	if (request.method == "GET") {
    		[userInstance:new User(params)]
    	}else{
    		def userInstance = new User(username:params?.email, email:params?.email, password:params?.password)

			if (!userInstance.save(flush:true)) {
				render(view:"create", model:[userInstance:userInstance])
				return false
			}

			def role = Role.findByAuthority(params?.authority)
			UserRole.create userInstance, role, true
			flash.message = "Usuario creado correctamente!!"
	        redirect(controller:"user", action:"list", params:[userInstance:userInstance, typeMess:"info"])
        }
    }

    def list(){
        //processMonitorService.senderemail()
       [userInstance:User.list(), userInstanceCount:User.count()]
    }

    def show() {
        def userInstance = User.get(params.id)
        [userInstance:userInstance]
    }

    def edit() {
        def userInstance = User.get(params.id)
        def rol = UserRole.findByUser(userInstance)
        def auth = Role.findById(rol.role.id.toInteger())
        [userInstance:userInstance, authority:auth.authority.toString()]
    }

    def update() {
        def userInstance = User.get(params.id)
        params.email = params.username
        if (!userInstance) {
            flash.message = "No se encontro el usuario"
            redirect(action:"list")
        }else{
            if (!params?.password) {
                userInstance.properties["username", "email", "accountExpired", "accountLocked", "enabled", "passwordExpired"] = params
                if (!userInstance.save(flush:true)) {
                    render(view:"edit", model:[userInstance:userInstance])
                    return false
                }
            }else{
                userInstance.properties["username", "email", "accountExpired", "accountLocked", "enabled", "passwordExpired", "password"] = params
                if (!userInstance.save(flush:true)) {
                    render(view:"edit", model:[userInstance:userInstance])
                    return false
                }
            }
        }

        if (userInstance.save()) {
            UserRole.removeAll userInstance
            def role = Role.findByAuthority((params?.authority) ?: 'ROLE_USER')
            UserRole.create userInstance, role, true
            flash.message = "Datos actualizados correctamente"
        }

        redirect(action:"edit", params:[id:params.id, typeMess:"info"])
    }

    def delete() {
         def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = "No se encontro el usuario"
            redirect(action:"list")
            return false
        }

        if (request.method=="GET") {
            return [userInstance:userInstance,id:params.id]
        }else {
            UserRole.removeAll userInstance
            userInstance.delete()
            flash.message = "El usuario: ${userInstance.username}  fue eliminado del la aplicación"
            redirect(action:"list", params:[typeMess:"info"])
        }
    }

    def changePassword(){
        def userInstance = springSecurityService.currentUser
        [userInstance:userInstance]
    }

    def updatePassword(passwordChangeCommand cmd){
            def userInstance = springSecurityService.currentUser
            String currentPassword = cmd.currentPassword
            String password = params.password
            String confirmPassword = params.confirmPassword

            if (cmd.hasErrors()) {
                flash.message = "Hubo errores en la operaccion de cambiar contraseña"
                redirect (action:"changePassword")
                return
            }

            if (passwordEncoder.isPasswordValid(userInstance.password, currentPassword, null)) {
                userInstance.properties["password"] = params
                if (userInstance.save(flush:true)) {
                    flash.message = "Su contraseña fue cambiada exitosamente"
                    redirect (action:"changePassword", params:[typeMess:"info"])
                    return
                }
            } else {
                flash.message = "Ingrese su contraseña actual correctamente!!"
                redirect action:"changePassword"
                return
            }

        }
}

class passwordChangeCommand {
    def springSecurityService

    String currentPassword
    String password
    String confirmPassword

    static constraints = {
        currentPassword blank:false
        password validator:{ val, obj ->
        val == obj.confirmPassword
        }
    }
}
