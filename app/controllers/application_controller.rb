# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_raven_context

  private
    def current_user
      # TODO: リクエストしてきたユーザidをもとにuserを取得
      return unless session[:user_id]
      @current_user ||= User.find(session[:user_id])
      # @current_user ||= User.last
    end

    def set_raven_context
      Raven.user_context(id: current_user&.id) # or anything else in session
      Raven.extra_context(params: params.to_unsafe_h, url: request.url)
    end
end
