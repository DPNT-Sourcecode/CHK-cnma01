# noinspection RubyUnusedLocalVariable
class Checkout
  def checkout(skus)
    freqs = {}
    return -1 if skus.empty?

    skus.split(',').each do |sku|
      if freqs[sku]
        freqs[sku] += 1
      else
        freqs[sku] = 1
      end
    end

    
  end

end

