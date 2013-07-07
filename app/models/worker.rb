class Worker < ActiveRecord::Base
  has_many :assginments
  has_many :projects, through: :assginments

  def is_assigned?(day)
    assginments.each do |assign|
      if assign.start_date <= day && day <= assign.end_date
        return true
      end
    end
    false
  end
end
