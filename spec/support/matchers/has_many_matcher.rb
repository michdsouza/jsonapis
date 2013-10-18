# spec/support/matchers/has_many_matcher.rb
# has_many_matcher && identical code gets used for have_one_matcher -- just change the define
require 'rspec/expectations'

RSpec::Matchers.define :have_many_relation do |expected|
  match do |actual|
    matched_association = associations.detect do |key, assc|
      key == expected
    end

    result = true if matched_association
    result &&= check_key(matched_association, @expected_key) if @key_provided
    result
  end

  chain :with_key do |key|
    @key_provided = true
    @expected_key = key
  end

  failure_message_for_should do |actual|
    "expected that #{actual} should have an attribute of #{expected}"
  end

  failure_message_for_should_not do |actual|
    "expected that #{actual} should not have an attribute of #{expected}"
  end

  description do
    "have an attribute of #{expected}"
  end

  def serializer
    if actual.is_a?(Class)
      actual
    else
      actual.class
    end
  end

  def associations
    serializer._associations
  end

  def check_key(matched_association, expected_key)
    association_key = matched_association.last.options[:key]
    return true if association_key == expected_key

    return false
  end
end