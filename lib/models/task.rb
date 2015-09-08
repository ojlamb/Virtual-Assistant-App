class Task
  attr_reader :id

  include DataMapper::Resource

  property :id, Serial
  property :task, String
  property :location, String
  property :deadline, Date
  belongs_to :user
  has n, :tags, through: Resource
end
