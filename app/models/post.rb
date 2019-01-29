class Post < ApplicationRecord
  belongs_to :member
  self.table_name = 'post'
end
