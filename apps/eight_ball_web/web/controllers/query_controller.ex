defmodule EightBallWeb.QueryController do
  use EightBallWeb.Web, :controller

  def handle_query(conn, %{"train_number" => train_number}) do
    train_data = EightBallData.TrainData.retrieve_by_train_number(train_number)
    render(conn, "train_data.html", %{train_number: train_number, data: train_data})
  end
end
