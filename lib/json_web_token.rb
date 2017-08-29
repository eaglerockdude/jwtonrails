class JsonWebToken
## Purpose: encapsulate JWT endoding and decoding.  Class required in inits.
  def self.encode(payload)
    JWT.encode(payload,Rails.application.secrets.secret_key_base)
  end

  def self.decode(token)
    return HashWithIndifferentAccess.new(JWT.decode(token,Rails.applcation.secret_key_base)[0])
  rescue
    nil
  end

end
