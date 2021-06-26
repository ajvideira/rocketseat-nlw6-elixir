defmodule Wabanex.IMCTest do
  use ExUnit.Case, async: true,

  describe "calculate/1" do
    test "when the file exists, returns the data" do
      params = %{"filename" => "students.csv"}

      response = IMC.calculate(params)

      expected_response = {:ok, %{
        "Jonathan" => 38.314176245210724,
        "Manuela" => 23.437499999999996,
        "Thaise" => 32.46618106139438
      }}

      assert response == expected_response
    end

    test "when the wrong file is given, returns an error" do
      params = %{"filename" => "students2.csv"}

      response = IMC.calculate(params)

      expected_response = {:error, "Error while opening the file"}

      assert response == expected_response
    end
  end
end
