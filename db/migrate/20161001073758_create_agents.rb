class CreateAgents < ActiveRecord::Migration[5.0]
  def change
    create_table :agents do |t|
      t.string "agent_name"
      t.timestamps
    end
  end
end
