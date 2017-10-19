require 'rails_helper'

RSpec.describe Artist, type: :model do
  # ...

  describe ".order_by_name" do
    let!(:artist1) { create :artist, name: 'Ben' }
    let!(:artist2) { create :artist, name: 'Ant' }
    let!(:artist3) { create :artist, name: 'Chris' }

    it "returns a sorted array of artists by names" do
      # note that they should not come out in the order that they were created
      expect(Artist.order_by_name).to eq([artist2, artist1, artist3])
    end
  end
end
