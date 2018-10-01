class Lugar < ApplicationRecord
	geocoded_by :direccion_completa
	after_validation :geocode

	def direccion_completa
		self.direccion + ", Partido de Lanús, Buenos Aires, Argentina"
	end

	def marker
		{latlng: [self.latitude, self.longitude], popup: self.nombre}
	end

	def clasificaciones
		["Centro educativo","Centro de salud","Asesor legal integral","Recreación","Deporte y cultura","Comunicación","Centro de jubilados","Ambiente","Negocio"]
	end
end
