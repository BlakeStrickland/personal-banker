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
    total = []
    array.each do |x|
      total << x.amount
    end
    total.reduce(:+).to_f
  end
end


def self.spending_this_month
  x = []
  criteria = self.all.select {|x| (x.created_on.mon - Time.now.mon) == 0}
  criteria.each do |i|
    x << i.amount
  end
  x.reduce(:+)
end
