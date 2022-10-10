class Reservation < ApplicationRecord
  validates :train_id, :seat_number, :booking_code, presence: true
  validates_uniqueness_of :seat_number, scope: :train_id
  before_validation :generate_booking_code, on: :create
  
  belongs_to :train
  belongs_to :user

  

  def generate_booking_code
    self.booking_code = SecureRandom.uuid
  end
end
