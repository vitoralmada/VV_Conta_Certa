class ExpensePayer < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :receiver, polymorphic: true
end
