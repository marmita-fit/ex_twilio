defmodule ExTwilio.Queue do
  @moduledoc """
  Represents an Queue resource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/api/rest/queues)
  """

  use ExTwilio.Resource, import: [:stream, :all, :list, :find, :create, :update, :destroy]

  defstruct sid: nil,
            friendly_name: nil,
            current_size: nil,
            max_size: nil,
            average_wait_time: nil

  def parents, do: [:account]
end
