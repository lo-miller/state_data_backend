class Api::StatesController < ApplicationController
  def index
    @message = "Hello!"
    render "states.json.jb"
  end

end
