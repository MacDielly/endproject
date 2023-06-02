class CreatePotins < ActiveRecord::Migration[7.0]
  def change
    create_table :potins do |t|
      t.string :titre
      t.text :contenu
      t.string :auteur

      t.timestamps
    end
  end
end
