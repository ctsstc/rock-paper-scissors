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

    elsif (left == :rock && right == :paper)
      'Paper beats rock!'
    elsif (left == :paper && right == :rock)
      'Paper beats rock!'

    elsif (left == :scissors && right == :paper)
      'Scissors beats paper!'
    elsif (left == :paper && right == :scissors)
      'Scissors beats paper!'

    elsif (left == :rock && right == :rock)
      'Tie game. Try again!'
    elsif (left == :paper && right == :paper)
      'Tie game. Try again!'
    elsif (left == :scissors && right == :scissors)
      'Tie game. Try again!'
    else
      :UNKNOWN
    end
  end

end