
def stock_picker(stock_prices)
  difference = 0
  result = [0,0]

  for i in 0..stock_prices.length-1
    for j in i..stock_prices.length-1
      temp_diff = stock_prices[j] - stock_prices[i]
      if temp_diff > difference
        difference = temp_diff
        result[0] = i
        result[1] = j
      end
    end
  end

  return result
end

p stock_picker([17,3,6,9,15,8,6,1,10]) # => [1,4]

p stock_picker([17,13,6,19,35,28,16,41,10]) # => [2,7]

p stock_picker([3,23,16,9,5,18,26,1,10]) # => [0,6]

p stock_picker([17,3,6,9,15,8,6,10,1]) # => [1,4]
