class Order

def self.worst(current)
  current.each do |cases|
    estimate = cases[0]
    actual = cases[1]

    score = estimate - actual
    cases[2] = score
  end

  sorted_current = current.sort_by {|cases| cases[2]}
end


def self.best(current)
  self.worst(current).reverse!
end


end
