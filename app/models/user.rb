class User < ActiveRecord::Base
  has_many :articles, dependent: destroy	
  validates :name, presence: true, length:{minimum: 5}
end
