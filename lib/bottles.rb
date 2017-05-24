class Bottles

  def new_bottle_number_for(number)
    case number
      when 0
        BottleNumber0
      when 1
        BottleNumber1
      else
        BottleNumber
    end.new(number)
  end

  def verse(bottle)
    bottle_number = new_bottle_number_for(bottle)
    next_bottle_number = new_bottle_number_for(bottle_number.successor)

    return "#{bottle_number} of beer on the wall, ".capitalize +
        "#{bottle_number} of beer.\n"+
        "#{bottle_number.action}, "+
        "#{next_bottle_number} of beer on the wall.\n"
  end

  def verses(starting, ending)
    starting.downto(ending).map { |bottle| verse(bottle) }.join("\n")
  end

  def song
    verses(99, 0)
  end

end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container
    'bottles'
  end

  def quantity
    number.to_s
  end

  def pronoun
    'one'
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def successor
    number-1
  end

  def to_s
    "#{quantity} #{container}"
  end
end

class BottleNumber0<BottleNumber
  def quantity
    'no more'
  end

  def successor
    99
  end

  def action
    'Go to the store and buy some more'
  end

end

class BottleNumber1<BottleNumber
  def pronoun
    'it'
  end

  def container
    'bottle'
  end

end