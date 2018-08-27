class Lugar < ApplicationRecord
	geocoded_by :direccion_completa
	after_validation :geocode

def direccion_completa
self.direccion + ", Lanús, Buenos Aires, Argentina"
end

def marker
{latlng: [self.latitude, self.longitude], popup: self.nombre}
end
end
