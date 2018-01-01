defmodule EightBallData.Repo.Migrations.AddTrainDataTable do
  use Ecto.Migration

  def up do
    create table(:train_data) do
      add :line,     :string
      add :train_id, :string
      add :track,    :string

      timestamps()
    end
  end

  def down do
    drop table(:train_data)
  end
end
