class User < ApplicationRecord
# Con este método encriptamos al password y generamos el método "authenticate"
  # que será usado por Knock
  has_secure_password
end
