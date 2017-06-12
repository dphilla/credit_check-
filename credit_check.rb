card_number = "5541801923795240"  #invalid
# card_number = "6011823618355969" #valid       #to check a valid card
# card_number = gets.chomp                      #to check inputed card numbers for validity

class CreditCheck
  attr_reader :digits

  def initialize(digits)
    @digits = digits
  end


  def convert_to_integer
    card_array = card_number.split(//)
    card_array.map! do |x|
      x.to_i
    end
  end

  def multiply_ev_other_by_2
    card_array = card_array.reverse
    card_array.map!.with_index do |x, i|
      if i.odd? == true
        x * 2
      elsif i.even? == true
        x
      else
      end
    end
  end

  def checks_for_double_digits
    card_array.map!.with_index do |x, i|
      if x > 9
        digit_sum = []
        digit_sum << card_array.slice(i).to_s.split(//)
      else
        x
      end
    end
  end


  def checks_sum_of_digits
    card_array = card_array.flatten!
    card_array.map! do |x|
      x.to_i
    end
    if card_array.inject(:+) % 10 == 0
      puts "The card is valid!"
    else
      puts "The card is not valid!"
    end
  end

end
