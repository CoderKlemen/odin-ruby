
def substrings(word, array_of_substrings)
  array_of_substrings.reduce(Hash.new(0)) do |result, substring|
    num = word.scan(/(?=(#{substring}))/i).count
    if num > 0
      result[substring] = num
    end
    result
  end
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts (substrings("below", dictionary))


dict1 = [ "down", "go", "going", "how", "howdy", "it", "i", "own", "part" , "partner", "sit" ]
puts (substrings("Howdy partner, sit down! How's it going?", dict1))
