def stock_picker(prices)
  return [0,0] if prices.length < 2

  min_price = prices[0]
  min_day = 0
  max_profit = 0
  best_days = [0, 1]

  prices.each_with_index do |price, day|
    next if day == 0

    profit = price - min_price

    if profit > max_profit
      max_profit = profit
      best_days = [min_day, day]
    end

    if price < min_price
      min_price = price
      min_day = day
    end
  end

  best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])