# frozen_string_literal: true

require "spec_helper"
require "shared_contexts/rake"

RSpec.describe "contributor_covenant:run" do
  include_context "rake"

  before do
    ContributorCovenant.stub(:generate) { true }
  end

  it "runs gracefully with no subscribers" do
    expect { subject.execute }.not_to raise_error
  end

  it "initalizes a file generation" do
    expect(ContributorCovenant).to receive(:generate).once
    subject.invoke
  end

  it "runs" do
    expect(ContributorCovenant.generate).to eq true
    subject.invoke
  end

  it "should ouput text when run" do
    expect(STDOUT).to receive(:puts).with("=> Generating Contributor Covenant File...")
    expect(STDOUT).to receive(:puts).with("=> Done!")
    subject.invoke
  end
end
