class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  def message
    if self.active == false
       "This student is currently inactive."
    else
      'This student is currently active.'
    end
  end

  def change
    if self.active == false
       self.active = true
    else
      self.active = false
    end
  end

end
