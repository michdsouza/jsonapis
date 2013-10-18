# spec/support/matchers/have_attribute_matcher.rb
class HaveAttribute
  def initialize(field)
    @field = field
    @options = {}
  end

  def matches?(serializer)
    @serializer = serializer

    result = @serializer._attributes.has_key?(@field)
    result = @serializer._attributes[@field] == @options[:key] if @options[:key].present?
    result
  end

  def with_key(key)
    @options[:key] = key
    self
  end

  def description
    result = "have json key each #{@field}"
    result << " with key of #{@options[:key]}" if @options[:key].present?
    result
  end

  def failure_message
    "expected field #{@field} but didn't receive"
  end

  def negative_failure_message
    "expected response NOT to have #{@field}"
  end
end

def have_attribute(field)
  HaveAttribute.new(field)
end