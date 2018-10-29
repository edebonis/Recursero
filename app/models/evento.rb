class Evento < ActiveRecord::Base
	geocoded_by :direccion_completa
	after_validation :geocode

def direccion_completa
self.ubicacion + ", Partido de Lanús, Buenos Aires, Argentina"
end

def marker
{latlng: [self.latitude, self.longitude], popup: self.nombre}
end
end
