class StoreSerializer < ActiveModel::Serializer
  attributes :id,  :name, :address, :articles, :articles_count

  has_many  articles

  def articles_count
    object.articles.count
  end


end
