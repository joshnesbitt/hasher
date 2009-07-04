module Hasher
  require 'digest/sha1'

  SECRET = "ilikebigbuttsandicannotlie"

  def generate_hash(string)
    encrypt string
  end

  protected
  def encrypt(string)
    Digest::SHA1.hexdigest(salt + string)
  end

  def salt
    Digest::SHA1.hexdigest(SECRET + time_stamp + random)
  end

  def time_stamp(time = Time.now.to_s)
    time.to_datetime.strftime("%d%Y%l%M")
  end

  def random(size = 10)
    (0...size).map { character_set[ rand(character_set.size) ] }.join
  end

  def character_set
    [('0'..'9'),('A'..'Z')].map { |range| range.to_a }.flatten
  end
end