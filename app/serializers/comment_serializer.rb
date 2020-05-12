class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_screen_name, :formatted_date, :content
end
