class Game

  attr_accessor :finished
  attr_reader :started

  OUTCOMES = {
    rock: {
      scissors: 'Rock beats scissors!',
      paper: 'Paper beats rock!'
    },
    paper: {
      rock: 'Paper beats rock!',
      scissors: 'Scissors beats paper!'
    },
    scissors: {
      rock: 'Rock beats scissors!',
      paper: 'Paper beats scissors!'
    }
  }

  def start
    @started = true
    @finished = false
  end

  def started?
    self.started || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)

    @finished = true

    OUTCOMES[left][right]

    # if (left == :rock && right == :scissors)
    #   "Rock beats scissors!"
    # elsif (left == :scissors && right == :rock)
    #   "Rock beats scissors!"

    # elsif (left == :rock && right == :paper)
    #   'Paper beats rock!'
    # elsif (left == :paper && right == :rock)
    #   'Paper beats rock!'

    # elsif (left == :scissors && right == :paper)
    #   'Scissors beats paper!'
    # elsif (left == :paper && right == :scissors)
    #   'Scissors beats paper!'

    # elsif (left == :rock && right == :rock)
    #   @finished = false
    #   'Tie game. Try again!'
    # elsif (left == :paper && right == :paper)
    #   @finished = false
    #   'Tie game. Try again!'
    # elsif (left == :scissors && right == :scissors)
    #   @finished = false
    #   'Tie game. Try again!'
    # else
    #   :UNKNOWN
    # end
  end

end