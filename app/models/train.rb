class Train < ApplicationRecord
  validates :number, presence: true
  has_many :reservations
  mount_uploader :train_logo, TrainLogoUploader
  SEATS = begin
    (1..6).to_a.map do |series|
      ["A","B","C"].map do |letter|
        "#{series}#{letter}"
      end
    end
  end.flatten

  def available_seats
    return SEATS - self.reservations.pluck(:seat_number)
  end

end
