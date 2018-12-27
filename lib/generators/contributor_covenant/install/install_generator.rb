# frozen_string_literal: true

require "rails/generators/base"

module ContributorCovenant
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      def create_contributor_covenant
        copy_file "template.md", "CONTRIBUTOR_COVENANT.md"
      end

      def display_readme
        readme "README"
      end
    end
  end
end
