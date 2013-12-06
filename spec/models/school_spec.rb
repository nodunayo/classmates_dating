require 'spec_helper'

describe School do
  it {should have_many :users}
end
