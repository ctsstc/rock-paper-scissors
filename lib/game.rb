class Game

  attr_reader :started

  def start
    @started = true
  end

  def started?
    self.started || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if (left == :rock && right == :scissors)
      "Rock beats scissors!"
    elsif (left == :scissors && right == :rock)
      "Rock beats scissors!"
    else
      :UNKNOWN
    end
  end

end