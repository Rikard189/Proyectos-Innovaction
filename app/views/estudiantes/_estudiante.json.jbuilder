json.extract! estudiante, :id, :nombre, :apellido, :matricula, :carrera, :email, :proyecto_id, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
