# frozen_string_literal: true

require_relative "queries/version"

module PaperTrail
  # ActiveRecord queries for your `PaperTrail::Version` model.
  module Queries
    def creates
      where event: "create"
    end
  end
end
