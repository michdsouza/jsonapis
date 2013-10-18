require 'spec_helper'

describe MovieSerializer, type: :serializer do
  it { should have_attribute(:id) }
  it { should have_attribute(:title) }
  it { should have_attribute(:synopsis) }
  it { should have_attribute(:runtime) }
  it { should have_attribute(:budget) }

  it { should have_many_relation(:ratings) }

  it { should have_one_relation(:genre) }
end