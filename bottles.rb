@capcount
@bottlecount
@capcounttotal
@freebottles
@bottlecounttotal

def buy_bottles(dollars)
  @freebottles = 0
  @bottlecount = dollars/2
  @capcount = dollars/2
  @bottlecounttotal = dollars/2
  @capcounttotal = dollars/2
  while @bottlecount >=2 || @capcount >=4
    trade_in_bottles_and_caps
  end
  unless dollars == 0
    puts "you purchased #{dollars/2} bottles and got #{@freebottles} for free from #{@bottlecounttotal} bottles and #{@capcounttotal} caps and you have #{@bottlecount} bottles and #{@capcount} caps remaining"
  end
end

def trade_in_bottles_and_caps
  if @bottlecount >=2 && @capcount >=4
    @freebottles +=2
    @bottlecount -=1
    @capcount -=3
    @bottlecounttotal +=2
    @capcounttotal +=2
  elsif @bottlecount >=2
    @freebottles +=1
    @bottlecount -=1
    @capcount +=1
    @bottlecounttotal +=1
    @capcounttotal +=1
  elsif @capcount >= 4
    @freebottles +=1
    @bottlecount +=1
    @capcount -=3
    @bottlecounttotal +=1
    @capcounttotal +=1
  end
end

#calc_investment(gets.chomp.to_i)
investment = -1

while investment != 0

  puts "enter dollars (0 to stop)"
  investment = gets.chomp.to_i
  buy_bottles(investment)
end
