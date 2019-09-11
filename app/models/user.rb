class User < ApplicationRecord
    has_secure_password

    has_many :user_issues
    has_many :issues, through: :user_issues
end
