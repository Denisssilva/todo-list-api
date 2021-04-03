class CreateTarefas < ActiveRecord::Migration[6.1]
  def change
    create_table :tarefas do |t|
      t.string :descricao
      t.boolean :finalizada

      t.timestamps
    end
  end
end
