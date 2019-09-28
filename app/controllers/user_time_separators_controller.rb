# frozen_string_literal: true

class UserTimeSeparatorsController < ApplicationController
  def index
    render json: current_user.user_time_separators
  end
end
