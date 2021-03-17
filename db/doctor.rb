class Doctor < ActiveRecord::Base
    has_many :patient 
end
