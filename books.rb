module Bookmarkable
  def bookmark
    store location
  end
end

class Book
  include Bookmarkable
  include Enumerable
  def location
    @page
  end

  def each(&block)
    @pages.each(&block)
  end
end

class Webpage
  include Bookmarkable
  def location
    @url
  end
end
