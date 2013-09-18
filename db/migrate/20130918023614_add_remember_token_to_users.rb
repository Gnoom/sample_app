class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
     add_column :users, :remember_token, :string
     bundle exec rake test:prepare add_index  :users, :remember_token
  end
end
