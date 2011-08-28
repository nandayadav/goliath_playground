require 'goliath'
require 'yajl'
# Example demonstrating how to have an API acting as a router.
# RackRoutes defines multiple uris and how to map them accordingly.
# Some of these routes are redirected to other Goliath API.
#
# The reason why only the last API is being used by the Goliath Server
# is because its name matches the filename.
# All the APIs are available but by default the server will use the one
# matching the file name.

#load services
require_relative 'services/user_service'
require_relative 'services/article_service'

# Our custom Goliath API


class RackRoutes < Goliath::API
  map '/version' do
    run Proc.new { |env| [200, {"Content-Type" => "text/html"}, ["Version 0.1"]] }
  end
  
  map "/users" do
    run UserService.new
  end
  
  map "/articles" do
    run ArticleService.new
  end

  not_found('/') do
    run Proc.new { |env| [404, {"Content-Type" => "text/html"}, ["Try /version /users, /articles"]] }
  end

  # You must use either maps or response, but never both!
  def response(env)
    raise RuntimeException.new("#response is ignored when using maps, so this exception won't raise. See spec/integration/rack_routes_spec.")
  end
end