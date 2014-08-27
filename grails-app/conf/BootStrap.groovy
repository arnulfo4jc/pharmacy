import org.mt.*

<<<<<<< HEAD
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
=======
class BootStrap {
  def init = { servletContext ->
    def user = new User(
      username:"me@gmail.com",
      password:"123",
      email:"me@gmail.com",
      fullName:"Arnulfo Rolando Blandon"
    )

    if (!user.save()) {
      user.errors.allErrors.each { error ->
        log.error "[$error.field: $error.defaultMessage]"
>>>>>>> 20bbe814b9dcb2f223c5eb638a22a1a1fa309e15
      }
    }

    assert User.count() == 1

    def adminRole = new Role(authority:"ROLE_ADMIN").save()
    new Role(authority:"ROLE_USER").save()
    new Role(authority:"ROLE_SUPERVISOR").save()

    assert Role.count() == 3

    UserRole.create user, adminRole, true

    assert UserRole.count() == 1
  }
  
  def destroy = {

  }
}
