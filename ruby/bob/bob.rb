class Bob

  def self.hey(remark)
    if shout?(remark)
      'Whoa, chill out!'
    elsif statement?(remark)
      'Whatever.'
    elsif question?(remark)
      'Sure.'
    elsif silence?(remark)
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  def self.shout?(remark)
    remark == remark.upcase && remark.count("a-zA-Z") > 0
  end

  def self.statement?(remark)
    remark[-1, 1] == "!"
  end

  def self.question?(remark)
    remark.strip[-1, 1] == "?"
  end

  def self.silence?(remark)
    remark.gsub(/\s+/, '') == ''
  end
end

module BookKeeping
  VERSION=1
end
