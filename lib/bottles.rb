class Bottles
  def verse(bottle)
    if bottle>2
      return "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer.\nTake one down and pass it around, #{bottle-1} bottles of beer on the wall.\n"
    end

    if bottle==2
      return "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
    end

    if bottle==1
      return "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    end

    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def verses(starting, ending)
    starting.downto(ending).map{|bottle| verse(bottle)}.join("\n")
  end

  def song
    verses(99, 0)
  end

end