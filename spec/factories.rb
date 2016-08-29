FactoryGirl.define do
  factory :to_do do
    title "MyString"
    description "MyText"
  end
  factory :user do
  	name					"Leo Chen"
  	email					"leo@example.com"
  	password				"abc123"
  	password_confirmation	"abc123"
  end
end
