require 'rails_helper'

describe Song do
  it {is_expected.to belong_to :artist }
end
