defmodule TxDashboard.DashboardFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TxDashboard.Dashboard` context.
  """

  @doc """
  Generate a account.
  """
  def account_fixture(attrs \\ %{}) do
    {:ok, account} =
      attrs
      |> Enum.into(%{
        account: "some account",
        last_name: "some last_name",
        name: "some name"
      })
      |> TxDashboard.Dashboard.Accounts.create_account()

    account
  end

  @doc """
  Generate a transaction.
  """
  def transaction_fixture(account_id, attrs \\ %{}) do
    {:ok, transaction} =
      attrs
      |> Enum.into(%{
        amount: 120.5,
        concept: "some concept",
        currency: "some currency",
        origin: "some origin",
        type: "some type",
        account_id: account_id
      })
      |> TxDashboard.Dashboard.Transactions.create_transaction()

    transaction
  end
end
