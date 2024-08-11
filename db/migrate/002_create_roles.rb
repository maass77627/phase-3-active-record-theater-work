class CreateRoles < ActiveRecord::Migration[5.1]
def change
    create_table :roles do |t|
        t.string :character_name
    end

end


end