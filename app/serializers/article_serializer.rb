class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :total_in_shelf, :total_in_vault
  
end
