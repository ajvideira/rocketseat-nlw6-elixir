defmodule WabanexWeb.Resolvers.Training do
  def get(%{id: training_id}, _content), do: Wabanex.Trainings.Get.call(training_id)
  def create(%{input: params}, _content), do: Wabanex.Trainings.Create.call(params)
end
