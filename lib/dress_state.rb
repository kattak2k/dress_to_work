# frozen_string_literal: true

class DressState
  attr_accessor :id

  def initialize(_state, _id = [])
    # call a relevant action
    @id = method(_state).call
  end

  private

  def shoes
    # socks and pants
    [5, 2]
  end

  def hat
    # pants, shirt, shoes, socks
    [2, 3, 4, 5]
  end

  def socks
    [5]
  end

  def pants
    [2]
  end

  def shirt
    [3]
  end

  def leave
    [2, 3, 4, 5]
  end
end
