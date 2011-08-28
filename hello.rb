require 'goliath'

class Hello < Goliath::API
  def response(env)
    ret = "nandayadav"

    [200, {}, ret]
  end
end