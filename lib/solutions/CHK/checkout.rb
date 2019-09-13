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

    a_discounts = freqs['A'] / 3
    b_discounts = freqs['B'] / 2

    cost = freqs['A']*50 + freqs['B']*30 + freqs['C']*20 + freqs['D']*15
    cost -= 20*freqs['A']
    cost -= 15*freqs['B']

    cost
  end

end


