json.extract! question, :id, :descripcion_pregunta, :peso_pregunta, :created_at, :updated_at
json.url question_url(question, format: :json)
