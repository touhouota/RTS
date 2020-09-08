# frozen_string_literal: true

module Api
  class SessionsController < ApplicationController
    def create
      session[:user_id] = params[:user_id]
    end
  end
end
