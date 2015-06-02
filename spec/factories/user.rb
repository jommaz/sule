require 'rails_helper'

FactoryGirl.define do
	factory :user do
		email 'shannon@nycda.com'
		password '12345678'
	end
end