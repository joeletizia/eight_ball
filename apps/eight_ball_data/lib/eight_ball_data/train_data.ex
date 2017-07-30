defmodule EightBallData.TrainData do
  import Ecto.Query
  alias EightBallData.TrainDataSchema
  alias EightBallData.Repo

  defstruct track_id: "", percentage: 0.0

  def retrieve_by_train_number(train_number) do
    train_records(train_number)
    |> build_percentages
  end

  defp train_records(train_number) do
    query = from t in TrainDataSchema,
    where: t.train_id == ^train_number,
    group_by: t.track,
    select: [t.track, count(t.track)]

    Repo.all(query)
  end

  defp build_percentages(records) do
    total = total_number_of_trains(records)
    Enum.map(records, &(convert_record_into_struct(&1, total)))
  end

  defp convert_record_into_struct(record, total) do
    %EightBallData.TrainData{track_id: Enum.at(record, 0), percentage: Enum.at(record, 1)/total}
  end

  defp total_number_of_trains(records) do
    Enum.reduce(records, 0, fn(record, acc) -> Enum.at(record, 1) + acc end)
  end
end
