def caesar_cypher(str, num)
  cyphered_str = ""
  str.each_char do |char|
    case char
    when /[[:upper:]]/
      converted = char.ord + num
      if converted < 65
        diff = converted - 65
        converted = 91 - diff.abs
      elsif converted > 90
        diff = 90 - converted
        converted = 64 + diff.abs
      end
      cyphered_str += converted.chr
    when /[[:lower:]]/
      converted = char.ord + num
      if converted < 97
        diff = converted - 97
        converted = 123 - diff.abs
      elsif converted > 122
        diff = 122 - converted
        converted = 96 + diff.abs
      end
      cyphered_str += converted.chr
    else
      cyphered_str += char
    end
  end
  return cyphered_str
end

puts caesar_cypher("What a string!", 5)

puts caesar_cypher("What a string!", -5)
