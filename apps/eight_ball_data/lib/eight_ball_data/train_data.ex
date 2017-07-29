defmodule EightBallData.TrainData do
  import Ecto.Query
  alias EightBallData.TrainDataSchema
  alias EightBallData.Repo

  def retrieve_by_train_number(train_number) do
    query = from t in TrainDataSchema,
         where: t.train_id == ^train_number,
         select: t
    Repo.all(query)
  end
end
