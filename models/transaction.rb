class Transaction
  include Mongoid::Document
  #include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :net_amount, :type => Integer
  field :description, :type => String
  embeds_one :user1, :class_name => "User"
  embeds_one :user2, :class_name => "User"


  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>
end
