# frozen_string_literal: true

module DiscourseStaffAlias
  module WithCurrentUser
    def with_current_user(user)
      @current_user = user
      yield if block_given?
    ensure
      @current_user = nil
    end

    def current_user
      @current_user || super
    end
  end
end
