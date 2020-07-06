class CreateSectionEdits < ActiveRecord::Migration[6.0]
  def change
    create_table :section_edits do |t|

      t.references :admin_user
      t.references :section
      t.string :summary
      t.timestamps
      
    end

    add_index :section_edits, ["admin_user_id", "section_id"]
    #Ex:- add_index("admin_users", "username")
  end
end
