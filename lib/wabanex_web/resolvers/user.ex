defmodule WabanexWeb.Resolvers.User do
  def get(%{id: user_id}, _content), do: Wabanex.Users.Get.call(user_id)
  def create(%{input: params}, _content), do: Wabanex.Users.Create.call(params)
end
