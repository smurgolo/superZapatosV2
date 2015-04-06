class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :total_in_shelf, :total_in_vault, :store_name
  belongs_to  :store

  def store_name
    object.store.name
  end
end
