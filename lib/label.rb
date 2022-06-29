class Label
  attr_accessor :title, :color, :items

  def initialize(title, color)
    @id = rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_book_to_items(book)
    @items.push(book)
    book.add_label(self)
  end
end
