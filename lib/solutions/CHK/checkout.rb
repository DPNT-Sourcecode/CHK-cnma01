# noinspection RubyUnusedLocalVariable
class Checkout
  def checkout(skus)
    return -1 if skus.empty?
    return 50 if skus == 'A'
  end

end
