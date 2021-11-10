class Order < ActiveRecord::Base
	#mount_uploader :image, ImageUploader
	validates :name, presence: :true
	validates :phone_number, presence: :true, length: { is: 10 }
	validates :cake_size, :date, presence: :true
	validates :delivery_or_pickup, presence: :true
	validates :delivery_address, presence: :true
	validates :d_phone_number, presence: :true
	validates :amount, presence: :true
	validates :paid, presence: :true
	validates :balance, presence: :true
	validates :date, presence: :true, length: { is: 10 }
	validates :time, presence: :true, length: { is: 5 }
	validates :image, presence: :true
	
	mount_uploader :image, ImageUploader

end