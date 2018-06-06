class ProfileMember < ActiveRecord::Base
  belongs_to :member
  
  # Validations
  validates_presence_of :first_name, :second_name
end
