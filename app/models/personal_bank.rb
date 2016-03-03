class PersonalBank < ActiveRecord::Base
  def self.balance
    self.all.reduce(0.0) {|sum, x| sum + x.amount.to_f}
  end
end
