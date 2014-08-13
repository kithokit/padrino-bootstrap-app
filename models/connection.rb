class Connection
  include Mongoid::Document
  #include Mongoid::Timestamps # adds created_at and updated_at fields

  has_and_belongs_to_many :users

  # field <name>, :type => <type>, :default => <value>
  embeds_many :transactions


  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>
end
