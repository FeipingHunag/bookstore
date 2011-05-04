class Book < ActiveRecord::Base
  validates_presence_of :title, :description
  validates_numericality_of :price
  validates_format_of :image,
                      :with    => %r{\.(gif|jpg|png)$}i,
                      :message => "must be a URL for a GIF, JPG, or PNG image"
  mount_uploader :image, ImageUploader
  belongs_to :category
  def full_title
    return "#{self.title}::#{self.subtitle}" unless self.subtitle.blank?
    self.title
  end
end

