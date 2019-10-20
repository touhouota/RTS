# frozen_string_literal: true

module Api
  class UserTimeSeparatorsController < ApplicationController
    def index
      render json: current_user.user_time_separators
    end
  end
end
