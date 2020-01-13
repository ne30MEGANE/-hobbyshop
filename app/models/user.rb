class User < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :orders

    validates :user_name, presence: true, length: {minimum: 2, maximum: 20}
    validates :nickname, length: { maximum: 20}
    validates :phone, presence: true, format: {
      with: /\A[0-9\(\)\-]*\z/,
      allow_blank: true,
      message: :invalid_telephone_number
    }
    validates :email, presence: true, email: {allow_blank: true}
    validates :postcode, presence: true, format: {
      with: /\A[0-9]{3}-[0-9]{4}\z/,
      allow_blank: true,
      message: :invalid_postcode
    }
end