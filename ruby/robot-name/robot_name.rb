class Robot
  attr_accessor :name

  def initialize
    @name = Robot.gen_name
  end

  ALPHABET = ('A'..'Z').to_a

  @used_names = []

  def self.gen_name
    new_name = gen_rand_letters + gen_rand_nums
    if @used_names.include?(new_name)
      new_name = gen_rand_letters + gen_rand_nums
    end
    @used_names << new_name
    new_name
  end

  def self.gen_rand_letters
    ALPHABET.sample + ALPHABET.sample
  end

  def self.gen_rand_nums
    rand(100..999).to_s
  end

  def self.forget; end

  def reset
    initialize
  end
end
