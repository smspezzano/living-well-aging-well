# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  first_name             :string(255)
#  last_name              :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#
# sequence(:email) { |n| "foo#{n}@example.com"}
FactoryGirl.define do 
	factory :user do |f|
		f.first_name "Rick"
		f.last_name "James"
		f.email "foo@bar.com"
		f.password "foobarbar"
		f.password_confirmation "foobarbar"
	end
	
end
