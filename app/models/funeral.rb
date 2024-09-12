require 'dotenv'
Dotenv.load

require 'base64'
require 'date'
require 'json'
require 'plaid'

class Funeral < ApplicationRecord
  def get_token
    post 'https://sandbox.plaid.com//api/create_link_token' do
      # Get the client_user_id by searching for the current user
      current_user = User.find(1)
      client_user_id = current_user.id

      # Create a link_token for the given user
      request = Plaid::LinkTokenCreateRequest.new(
        {
          user: { client_user_id: client_user_id },
          client_name: 'Plaid Test App',
          products: ['auth'],
          country_codes: ['US'],
          language: "en",
          redirect_uri: nil_if_empty_envvar('PLAID_REDIRECT_URI'),
          webhook: 'https://webhook.example.com'
        }
      )
      response = client.link_token_create(request)
      content_type :json
      response.to_json
    end
  end
end
