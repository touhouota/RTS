# frozen_string_literal: true

module Api
  class UserTimeSeparatorsController < ApplicationController
    def index
      render json: current_user.user_time_separators
    end

    def create
      user_time_separator = current_user.user_time_separators.create!(permited_params)
      render json: user_time_separator
    end

    private
      def permited_params
        params.require(:user_time_separator).permit(:separated_at)
      end
  end
end
