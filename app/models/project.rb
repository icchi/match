class Project < ActiveRecord::Base
  has_many :assginments
  has_many :workers, through: :assginments
end
