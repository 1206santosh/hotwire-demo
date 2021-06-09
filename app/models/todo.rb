class Todo < ApplicationRecord
    # validates :body

    after_create_commit {broadcast_append_to 'todos'}
end 
