# frozen_string_literal: true

require "contributor_covenant/version"

module ContributorCovenant
  class Error < StandardError; end

  class << self
    def generate
      FileUtils.copy("#{copy_from_path}/template.md", "#{copy_to_path}/CONTRIBUTOR_COVENANT.md", preserve: true)
    end

    def copy_from_path
      "#{File.expand_path(__dir__)}/generators/contributor_covenant/install/templates"
    end

    def copy_to_path
      Dir.pwd
    end

    def root
      File.expand_path(__dir__)
    end
  end
end
