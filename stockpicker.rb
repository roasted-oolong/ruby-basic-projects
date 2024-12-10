def stock_picker(stockprices_array)
  profits_list = []

  stockprices_array.each_with_index.flat_map do |price, day|    
    stockprices_array[day + 1...].map.with_index(day) do |price_two, day_two| 
        profit = price - price_two
        profits_list << {
          highest_profit: profit,
          buy_date: day,
          sell_date: day + 1 + day_two
        }
    end
  end

  highest_profit = profits_list.max_by { |entry| entry[:highest_profit] }
end
stock_picker([17,3,6,9,15,8,6,1,10])