class Todo < ApplicationRecord
    # validates :body
    after_create_commit {broadcast_append_to 'new_todos'}
    after_update_commit {broadcast_replace_to 'new_todos'}
end 
