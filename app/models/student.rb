class Student < ActiveRecord::Base
  before_save :default_value

  def to_s
    self.first_name + " " + self.last_name
  end

  private

  def default_value
    if self.active.nil?
      self.active = false
      self.save
    end
  end

end
