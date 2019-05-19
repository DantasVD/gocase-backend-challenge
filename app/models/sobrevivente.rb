class Sobrevivente < ApplicationRecord
	validates_presence_of :nome, :idade, :genero, :last_latitude, :last_longitude
end
