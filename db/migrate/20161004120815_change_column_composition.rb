class ChangeColumnComposition < ActiveRecord::Migration[5.0]
  def change
    change_column(:orders, :compositions, :string, {limit: 555})
  end
end
