# noinspection RubyUnusedLocalVariable
class Checkout
  def checkout(skus)
    freqs = {}
    cost = 0
    return -1 if skus.empty?

    skus.split(',').each do |sku|
      if freqs[sku]
        freqs[sku] += 1
      else
        freqs[sku] = 1
      end
    end

    a_discounts = freqs['A'] / 3 if freqs['A']
    b_discounts = freqs['B'] / 2 if freqs['B']

    cost = freqs['A']*50 + freqs['B']*30 + freqs['C']*20 + freqs['D']*15
    cost -= 20*a_discounts
    cost -= 15*b_discounts

    cost
  end

end




