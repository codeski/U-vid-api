class VideoSerializer
  include FastJsonapi::ObjectSerializer
  # belongs_to :category
  attributes :title, :notes, :embed, :created_at, :category_id, :category_name
end
