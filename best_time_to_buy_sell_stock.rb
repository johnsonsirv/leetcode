# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  # constraints: selling price needs to be larger than buying price
  # for each day, pick price, try to sell it on the other days after the current day
  # once the selling price of any day is less than the current buying price, skip to next day
  # else, if the profit is larger than the current max_profit, then update the the max profit
  # return max_profit
  prices.each_with_index do |buying_price, day|
      sell_day = day + 1
      sell_day.upto(prices.size - 1) do |selling_day|
          selling_price = prices[selling_day]
          if selling_price > buying_price
              profit = selling_price - buying_price
              max_profit = profit if profit > max_profit 
          end
      end
  end
  max_profit
end

p max_profit([7,6,4,3,1])
p max_profit([7,1,5,3,6,4])