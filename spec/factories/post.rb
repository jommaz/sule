FactoryGirl.define do

	factory :post do
		title "First day of Walking!"
		body "So today was an eventful day, it was the best day ever"
		unique 0
	end

	factory :unique_question do
		title "First day of Walking!"
		body "So today was an eventful day, it was the best day ever"
		unique 1
	end
	
end