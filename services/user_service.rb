require 'goliath'
require 'yajl'
require_relative '../app/models/user'
class UserService < Goliath::API
  use Goliath::Rack::Params
  use Goliath::Rack::DefaultMimeType
  use Goliath::Rack::Render, 'json'

  # use Goliath::Rack::Validation::RequiredParam, {:key => 'id', :type => 'ID'}
  # use Goliath::Rack::Validation::NumericRange, {:key => 'id', :min => 1}

  def response(env)
    [200, {}, User.find(params['id']).to_json]
  end
end