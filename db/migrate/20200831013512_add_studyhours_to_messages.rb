class AddStudyhoursToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :hours, :integer
  end
end
