class PhoneNumber
  attr_reader :value
  delegate :hash, to: :value

  def initialize(value)
    @value = value.frozen? ? value : value.dup.freeze
  end
end
