class Issue < ApplicationRecord
    has_many :user_issues
    has_many :users, through: :user_issues
    
    validates :name, presence: true
    validates :desc, presence: true
    validates :date, presence: true 

end
