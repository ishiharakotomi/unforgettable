class ChangeDateIntroductionToTheaters < ActiveRecord::Migration[5.2]
  def change
  	change_column :theaters, :introduction, :text
  end
end
