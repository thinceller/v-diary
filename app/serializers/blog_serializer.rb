class BlogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :text
end
