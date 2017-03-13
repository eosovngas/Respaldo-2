class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nombre, presence:true, length: { minunum: 10, maximum: 60}, format: { with: /\A[a-zA-Z]+\z/ ,:message => "no valido"}
  validates :phone, presence:true, numericality:{greater_than: 0, only_integer:true ,:message => "no valido"}
  validates :tienda, presence:true,format: { with: /\A[a-zA-Z]+\z/ ,:message => "no valido"}

end
