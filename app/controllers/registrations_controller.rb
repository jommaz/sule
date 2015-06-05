class RegistrationsController < Devise::RegistrationsController
    def edit
        @new_user = User.new
    end
end
