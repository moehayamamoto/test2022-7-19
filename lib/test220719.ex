defmodule Test220719 do
  @moduledoc """
  Documentation for `Test220719`.
  """

  @doc """
  ファイルを読み込む

  ## Examples

      iex> Test220719.hello()
      :world

  """
  def read_git(file) do
    {:ok, data} = File.read(file)
  end

   @doc """
  データをマップに変換しやすよう加工

  ## Examples

      iex> Test220719.hello()
      :world

  """
  def read_git_list(data) do
    list1 = String.split(data, "\n")

     #頂点の数 線分の数 三角形の数
     lista = Enum.at(list1, 0)
     #x成分値 y成分値 z成分値(頂点の数分続く)
     listb = Enum.slice(list1, 1..8)
     #始点の頂点番号 終点の頂点番号(線分の数分続く)
     listc = Enum.slice(list1, 9..26)
     #１点目の線分番号 ２点目の線分番号 ３点目の線分番号(三角形の数分続く)
     listd = Enum.slice(list1, 27..38)
  end

   @doc """
  データをマップに変換しやすよう加工
  mapの場合は、キーはアトムで記述する
  JSONの場合は、columnが文字列となる

  ## Examples

      iex> Test220719.hello()
      :world

  """
  def make_map(list, column) do
    #Enum.map(list, &String.split(&1, “,”))
    #|>
     Enum.map(&String.split(&1, " "))
    |> Enum.map(&Enum.into(Enum.zip(column, &1), %{}))
  end



   @doc """
  マップ、JSONに変換する関数を実行する関数

  ## Examples

      iex> Test220719.hello()
      :world

  """
  def main(file) do
    data = read_git(file)
    list = read_git_list(data)
    make_map(lista, column)
    make_map(listb, column)
    make_map(listc, column)
    make_map(listd, column)
    #これらを一つのマップにする処理を行う
  end


end
