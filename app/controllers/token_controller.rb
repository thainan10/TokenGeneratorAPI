require 'securerandom'

class TokenController < ApplicationController

  def index
    if params.require(:username) == 'test1@test2.com'
      if params.require(:password) == 'Aa234567!'
        token = {
          success: true,
          data: {
            token: SecureRandom.uuid
          },
        }
        response.headers['Access-Control-Allow-Origin'] = '*'
        render json: token
      end
    end
  end
end
