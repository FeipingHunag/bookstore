class Book < ActiveRecord::Base
  def full_title
    return "#{self.title}::#{self.subtitle}" unless self.blank?
    self.title
  end
end

