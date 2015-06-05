class RegistrationsController < Devise::RegistrationsController
	
    def edit
        @new_user = User.new
    end

   protected
    def after_sign_up_path_for(resource)
		new_capsule_path
		end
end
