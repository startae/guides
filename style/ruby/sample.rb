class Sample
  SOME_CONSTANT = "upper case name"

  def initialize(attributes)
     @some_attribute = attributes[:some_attribute]
     @another_attribute = attributes[:another_attribute]
     @user_factory = attributes[:user_factory]
   end

  def method_with_arguments(argument_one, argument_two)
    a_really_long_line_that_is_broken_up_over_multiple_lines_and.
        subsequent_lines_are_indented_and.
          each_method_lives_on_its_own_line
  end

  def method_that_returns_an_array
    [item_one, item_two]
  end

  def method_that_returns_a_hash
    { key: "value" }
  end

  def method_with_large_hash
    {
      one: "value",
      two: "value",
    }
  end

  def method_with_large_array
    [
      :one,
      :two,
      :three,
    ]
  end
end
