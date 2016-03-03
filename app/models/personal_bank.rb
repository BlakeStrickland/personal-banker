class PersonalBank < ActiveRecord::Base
  def self.balance
    if self.all.empty?
      0.0
    else
      self.all.reduce(0.0) {|sum, x| sum + x.amount.to_f}
    end
  end
  def self.num_of_trans
    self.count
  end
  def self.monthly_expenses
    array = self.all.select {|x| (x.created_at.mon - Time.now.mon ) == 0}
    array.reduce(0.0) {|sum, x| sum + x.amount.to_f}
  end
  def self.last_months_expenses
    array = self.all.select {|x| (x.created_at.mon - Time.now.mon ) == -1}
    array.reduce(0.0) {|sum, x| sum + x.amount.to_f}
  end
  def self.last_months_num
    array = self.all.select {|x| (x.created_at.mon - Time.now.mon ) == -1}
    array.count
  end
  def self.largest_expense
    array1= []
    hash = {}
    self.all.each do |x|
      hash = {x.amount => x.exhanges}
    end
    self.all.each do |x|
      array1 << x.amount
    end
    # h.each {|key, value| puts "#{key} is #{value}" }
    hash[array1.max]
  end
  def self.largest_expense_this_month
    array = self.all.select {|x| (x.created_at.mon - Time.now.mon ) == 0}
    array1 = []
    hash = {}
    array.each do |x|
      hash = {x.amount => x.exhanges}
    end
    array.each do |x|
      array1 << x.amount
    end
    # h.each {|key, value| puts "#{key} is #{value}" }
    hash[array1.max]
  end
  def self.spent_most_money_at
    
  end
end
