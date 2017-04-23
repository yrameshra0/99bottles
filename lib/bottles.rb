class Bottles

  def container(number)
    if (number==1)
      return 'bottle'
    end

    return 'bottles'
  end

  def quantity(number)
    if (number==0)
      return 'no more'
    end

    return number
  end

  def pronoun(number)
    if (number==1)
      return 'it'
    end

    return 'one'
  end

  def verse(bottle)
    if bottle==0
      return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end

    return "#{bottle} #{container (bottle)} of beer on the wall, #{bottle} #{container (bottle)} of beer.\nTake #{pronoun(bottle)} down and pass it around, #{quantity(bottle-1)} #{container (bottle-1)} of beer on the wall.\n"
  end

  def verses(starting, ending)
    starting.downto(ending).map { |bottle| verse(bottle) }.join("\n")
  end

  def song
    verses(99, 0)
  end

end