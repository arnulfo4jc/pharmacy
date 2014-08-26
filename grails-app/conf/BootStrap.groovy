import org.mt.*

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
