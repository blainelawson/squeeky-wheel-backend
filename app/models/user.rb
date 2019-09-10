class User < ApplicationRecord

    has_secure_password
    protect_from_forgery prepend: true

    has_many :user_issues
    has_many :issues, through: :user_issues
end
