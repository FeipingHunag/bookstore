class Book < ActiveRecord::Base
  validates_presence_of :title, :description
  validates_numericality_of :price
  validates_format_of :image,
                      :with    => %r{\.(gif|jpg|png)$}i,
                      :message => "must be a URL for a GIF, JPG, or PNG image"
  mount_uploader :image, ImageUploader
  belongs_to :category
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  def full_title
    return "#{self.title}::#{self.subtitle}" unless self.subtitle.blank?
    self.title
  end

  private
    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
end

