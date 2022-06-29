require 'date'

class Item
  attr_reader :id, :archived, :label
  attr_accessor :publish_date

  def initialize(publish_date, archived: false, id: rand(1..1000))
    @id = id
    @publish_date = Date.strptime(publish_date, '%Y-%m-%d')
    @archived = archived
  end

  def move_to_archive
    can_be_archived? && @archived = true
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  private

  def can_be_archived?
    Time.now.year - @publish_date.year > 10
  end
end
