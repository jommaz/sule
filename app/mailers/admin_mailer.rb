class AdminMailer < ApplicationMailer
	default from: "no-reply@sule.com"
	default to: "jommaz@hotmail.com"

	def new_user(user)
		@user = user
		mail(subject: "New User: #{user.email}")
	end

end
