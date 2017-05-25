class Bottles


  def verse(bottle)
    bottle_number = BottleNumber.for(bottle)
    return "#{bottle_number} of beer on the wall, ".capitalize +
        "#{bottle_number} of beer.\n"+
        "#{bottle_number.action}, "+
        "#{bottle_number.successor} of beer on the wall.\n"
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

  def self.for(number)
    case number
      when 0
        BottleNumber0
      when 1
        BottleNumber1
      else
        BottleNumber
    end.new(number)
  end

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
    BottleNumber.for(number-1)
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
    BottleNumber.for(99)
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