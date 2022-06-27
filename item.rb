class Item
  def initialize(publish_date, archived: false, id: rand(1..1000))
    @id = id
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    puts 'Will move item to archive' if can_be_archived?
  end

  private

  def can_be_archived?
    puts 'Will check whether item can be archived'
  end
end
