class StoreSerializer < ActiveModel::Serializer
  embed :ids, embed_in_root: true, include: true

  attributes :id,  :name, :address

  has_many  :articles
end
