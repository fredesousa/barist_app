class RenameHabitsToHabitInPreferences < ActiveRecord::Migration[6.0]
  def change
    rename_column :preferences, :habits, :habit
  end
end
