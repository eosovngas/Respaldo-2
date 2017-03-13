class Almuerzo < ActiveRecord::Base
	validates :foto, presence:true
	validates :nombre, presence:true, uniqueness:true, length: { minunum:15, maximum: 60}, format: { with: /\A[a-zA-Z]+\z/ ,:message => "no valido" }
	validates :descripcion, presence:true, length:{ minunum: 10, maximum:100,:message => "no valido"}
	validates :precio, presence:true, numericality:{greater_than: 0, only_integer:true, :message => "no valido"  } 
	validates :stock, presence:true, numericality:{greater_than: 0, only_integer:true, :message => "no valido"}
end