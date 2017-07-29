defmodule EightBallData.TrainDataSchema do
  use Ecto.Schema

  schema "train_data" do
    field :line
    field :train_id
    field :track
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
  end
end
