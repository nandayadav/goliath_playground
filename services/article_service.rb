require_relative '../app/models/entry'
class ArticleService < Goliath::API
  use Goliath::Rack::Params
  use Goliath::Rack::DefaultMimeType
  use Goliath::Rack::Render, 'json'

  # use Goliath::Rack::Validation::RequiredParam, {:key => 'id', :type => 'ID'}
  # use Goliath::Rack::Validation::NumericRange, {:key => 'id', :min => 1}

  def response(env)
    page = params[:page] || 0
    [200, {}, Entry.order('rank desc').limit(30).offset(page).to_json]
  end
end