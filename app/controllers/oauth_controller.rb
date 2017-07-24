class OauthController < ApplicationController
  skip_before_action :authenticate_user!

  def facebook
    token = HTTParty.post('https://graph.facebook.com/v2.8/oauth/access_token', {
      query: {
        client_id: ENV["FACEBOOK_APP_ID"],
        redirect_uri: 'http://localhost:7000/',
        client_secret: ENV["FACEBOOK_APP_SECRET"],
        code: params[:code]
      },
      headers: { 'Accept' => 'application/json'}
      }).parsed_response


      profile = HTTParty.get('https://graph.facebook.com/v2.5/me?fields=id,name,email', {
        query: token,
        headers: { 'User-Agent' => 'HTTParty','Accept' => 'application/json' }
        }).parsed_response


        user = User.where("facebook_id = :facebook_id OR email = :email", email: profile["email"], facebook_id: profile["id"]).first

        user = User.new username: profile["name"].gsub!(/\s+/, ''), email: profile["email"] unless user #regex is removing the whitespace from the facebook name to make it pass our validations

        user[:facebook_id] = profile["id"]

        if user.save
          token = Auth.issue({ id: user.id })
          render json: { user: UserSerializer.new(user), token: token }, status: :ok
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
  end
end
