class Fix < ApplicationRecord
  belongs_to :bug
  belongs_to :user
end
