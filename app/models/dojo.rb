class Dojo < ActiveRecord::Base
    before_validation puts 'starting validation'
    after_save puts 'done got saved'


    before_validation :putsify
    validates :name, :city, :state, presence: true
    validates :city, numericality: { equal_to: 2 }

    has_many :ninjas

    
end
