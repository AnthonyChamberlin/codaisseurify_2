class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true

  def self.order_by_name
    order(:name)
  end

  def self.order_by_join
    order('created_at DESC')
  end


end
