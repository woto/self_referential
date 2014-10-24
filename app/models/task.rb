class Task < ActiveRecord::Base
  belongs_to :task
  has_many :tasks

  scope :published, -> { where(status: 1) }

  after_create do
    puts '========================================='
    puts "task_id is present: '#{task_id}'"
    puts "what about task association? '#{task}'"
    puts '========================================='
  end
end
