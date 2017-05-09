class Bottles

  def container(number)
    BottleNumber.new(number).container
  end

  def quantity(number)
    BottleNumber.new(number).quantity
  end

  def pronoun(number)
    BottleNumber.new(number).pronoun
  end

  def action(number)
    BottleNumber.new(number).action
  end

  def successor(number)
    BottleNumber.new(number).successor
  end

  def verse(bottle)
    return "#{quantity(bottle).capitalize} #{container (bottle)} of beer on the wall, "+
           "#{quantity(bottle)} #{container(bottle)} of beer.\n"+
           "#{action(bottle)}, #{quantity(successor(bottle))} "+
           "#{container (bottle-1)} of beer on the wall.\n"
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
      return 99
    end

    return number-1
  end
end