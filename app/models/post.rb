class Post < ActiveRecord::Base
  def self.ordered_first_10
    order("published_at").limit(10)
  end

  # It returns the posts whose titles contain one or more words that form the query
  def self.search(query)
    # where(:subject, query) -> This would return an exact match of the query
    where("subject like ?", "%#{query}%")
  end
end
