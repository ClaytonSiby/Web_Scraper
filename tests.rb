module TestingModule
  TESTING_VARIABLE = %w[
    foo
    bar
  ].freeze

  def display_info
    TESTING_VARIABLE.each { |el| puts el }
  end
end

class ReceivingMethods
  extend TestingModule
end

ReceivingMethods.display_info
