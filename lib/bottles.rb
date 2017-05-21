class Bottles

  def verse(bottle)
    bottle_number = BottleNumber.new(bottle)

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

  def initialize(number)
    @number = number
  end

  def container
    if number==1
      return 'bottle'
    end

    return 'bottles'
  end

  def quantity
    if number==0
      return 'no more'
    end

    return number.to_s
  end

  def pronoun
    if number==1
      return 'it'
    end

    return 'one'
  end

  def action
    if number==0
      return 'Go to the store and buy some more'
    end

    return "Take #{pronoun} down and pass it around"
  end

  def successor
    if number==0
      return BottleNumber.new(99)
    end

    return BottleNumber.new(number-1)
  end

  def to_s
    "#{quantity} #{container}"
  end
end