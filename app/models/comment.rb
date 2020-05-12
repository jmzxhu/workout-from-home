class Comment < ApplicationRecord
  belongs_to :workout
  belongs_to :user

  validates :content, presence: true

  def user_screen_name
    user.screen_name
  end

  def formatted_date
    created_at.strftime("%-m/%-d/%Y")
  end
end
