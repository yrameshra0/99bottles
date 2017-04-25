class Bottles

  def container(number)
    if number==1
      return 'bottle'
    end

    return 'bottles'
  end

  def quantity(number)
    if number==0
      return 'no more'
    end

    return number.to_s
  end

  def pronoun(number)
    if number==1
      return 'it'
    end

    return 'one'
  end

  def action(number)
    if number==0
      return 'Go to the store and buy some more'
    end

    return "Take #{pronoun(number)} down and pass it around"
  end

  def successor(number)
    if number==0
      return 99
    end

    return number-1
  end

  def verse(bottle)
    return "#{quantity(bottle).capitalize} #{container (bottle)} of beer on the wall, #{quantity(bottle)} #{container(bottle)} of beer.\n#{action(bottle)}, #{quantity(successor(bottle))} #{container (bottle-1)} of beer on the wall.\n"
  end

  def verses(starting, ending)
    starting.downto(ending).map { |bottle| verse(bottle) }.join("\n")
  end

  def song
    verses(99, 0)
  end

end