class PagesController < ApplicationController
  def home
    @application = Doorkeeper::Application.where(name: 'react').first

    @applictaion = {
      name: @application.name,
      client_id: @application.uid,
      client_secret: @application.secret
    }
  end
end
