class Post < ActiveRecord::Base
  belongs_to :author

  scope :published, -> { where(status: 1) }

  after_create do
    puts '========================================='
    puts "author_id is present: '#{author_id}'"
    puts "what about task association? '#{author}'"
    puts '========================================='
  end
end
