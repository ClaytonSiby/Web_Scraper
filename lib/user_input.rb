class UserInput
  attr_accessor :input, :name
  attr_reader :options

  @options = ["Get article link", "Exit"]
  def initialize(input, name)
    @input = input
    @name = name
  end

  def user_options
    "Hello #{@name} here are you options #{@options.each { |option| option }}"
    "Enter "
  end
end