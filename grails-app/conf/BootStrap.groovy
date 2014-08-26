class BootStrap {

    def init = { servletContext ->

      def user1 = new org.mt.User(
            username:'me@gmail.com',
            password:'123',
            email:"me@gmail.com",
            fullName:"Jamileth Alvarez",
            enabled:true,
            accountExpired:false,
            accountLocked:false,
            passwordExpired:false
      )

      if (!user1.save()) {
          user1.errors.allErrors.each {
          print it
      }

      }else{
        user1.save()
      }

      def rolAdmin = new org.mt.Role(authority:"ROLE_ADMIN")
      rolAdmin.save()

      def rolUser = new org.mt.Role(authority:"ROLE_USER")
      rolUser.save()

      def rolSupervisor = new org.mt.Role(authority:"ROLE_SUPERVISOR")
      rolSupervisor.save()

      def userRole1 = new org.mt.UserRole(user:user1, role:rolAdmin)
      userRole1.save()
    }
    
    def destroy = {

    }
}
