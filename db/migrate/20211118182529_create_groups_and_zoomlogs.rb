class CreateGroupsAndZoomlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :title
      t.timestamps
    end

    create_table :zoomlogs do |t|
      t.string :title
      t.integer :zoomid
      t.string :pwd
      t.boolean :pwdisembed
      t.string :desc
      t.string :prof
      t.timestamps
    end

    create_table :groups_zoomlogs, id: false do |t|
      t.belongs_to :group
      t.belongs_to :zoomlog
    end
  end
end
