# frozen_string_literal: true

namespace :"contributor_covenant" do
  desc "Install contributor_covenant in a non Rails environment"
  task :install do
    cc_file = File.expand_path("../../../generators/contributor_covenant/install/templates/template.md", __dir__)

    # @TODO: allow to overwrite
    if File.exist?("./CONTRIBUTOR_COVENANT.md")
      warn "=> [ skipping ] covenant already exists"
    else
      FileUtils.cp(cc_file, "./CONTRIBUTOR_COVENANT.md")
      warn "=> [ success ] covenant created"
    end
  end
end
