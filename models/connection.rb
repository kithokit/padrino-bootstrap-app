class Connection
  include Mongoid::Document
  #include Mongoid::Timestamps # adds created_at and updated_at fields

  has_and_belongs_to_many :users
  embeds_many :transactions

  field :net_total_amount, :type => Integer

  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>

  def add_relationship(user1, user2)
    if user1 < user2
      self.users = [user1, user2]
    else
      self.users = [user2, user1]
    end
  end

  def add_transaction(transaction)
    self.net_total_amount = self.net_total_amount + transaction.net_amount
    self.transactions.push(transaction)
  end
end
