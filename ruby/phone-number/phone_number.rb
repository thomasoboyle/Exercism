module BookKeeping
  VERSION = 2
end

class PhoneNumber
  def self.clean(phone_number)
    phone_number = phone_number.gsub(/\D/,'')
    if phone_number.length == 10 && phone_number.chr != '1' && phone_number[3] != '0'
      phone_number 
    elsif phone_number.length == 11 && phone_number.chr == '1'
      phone_number[0] = ""
      phone_number
    else
      nil 
    end
  end
end
