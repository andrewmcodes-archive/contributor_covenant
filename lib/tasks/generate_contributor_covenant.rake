# frozen_string_literal: true

namespace :generate_contributor_covenant do
  task :run do
    puts "=> Generating Contributor Covenant File..."
    ContributorCovenant.generate
    puts "=> Done!"
  end
end
