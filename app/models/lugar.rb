class Lugar < ApplicationRecord
	geocoded_by :direccion_completa
	after_validation :geocode

def direccion_completa
self.direccion + ", Valentin Alsina, Buenos Aires, Argentina"
end
end
