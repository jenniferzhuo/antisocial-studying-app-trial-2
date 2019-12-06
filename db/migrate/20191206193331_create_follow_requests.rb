class CreateFollowRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :follow_requests do |t|
      t.integer :sender_id
      t.integer :recipent_id
      t.boolean :accepted_request, {:default => false}

      t.timestamps
    end
  end
end
