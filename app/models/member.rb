class Member < ApplicationRecord
  has_many :posts
  self.table_name = 'member'
end
