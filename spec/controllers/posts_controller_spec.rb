require 'rails_helper'

RSpec.describe PostsController, type: :controller do

	let(:valid_session) { {user_id: 1} }
	let(:valid_user) { {
		email: 'shannon@nycda.com',
		password: '12345678', 
		password_confirmation: '12345678'
	}	 }

	let(:valid_capsule) { {
		title: "Dan, feel better",
		user_id: 1
		}	}
	let(:valid_post) { {
		title: "This thing",
		body: "what is it",
		capsule_id: 1
	} }
		

	describe 'i do not know what to put here' do
	
		it 'should allow a person to upload a photo' do			
			post :create, {post: valid_post}, valid_session
			expect(assigns(:post)).to be_a(Post)
			expect(assigns(:post)).to be_persisted 
		end
	end
end
