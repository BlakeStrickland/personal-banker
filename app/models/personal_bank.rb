class PersonalBank < ActiveRecord::Base
  def self.balance
    self.all.reduce(0.0) {|sum, x| sum + x.amount.to_f}
  end
  def self.num_of_trans
    self.count
  end
end
