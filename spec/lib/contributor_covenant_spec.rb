# frozen_string_literal: true

require "spec_helper"

describe ContributorCovenant do
  subject { described_class }
    it "has a version number" do
    expect(ContributorCovenant::VERSION).not_to be nil
  end

  describe "#generate" do
    it "copys the template to project root" do
      obj = double()
      subject.stub(:copy_from_path) { 'from/path' }
      subject.stub(:copy_to_path) { 'to/path' }

      FileUtils.stub(:copy)
      expect(FileUtils).to receive(:copy).with('from/path/template.md', 'to/path/CONTRIBUTOR_COVENANT.md', preserve: true)
      subject.generate
    end
  end

  describe "#copy_from_path" do
    it "returns the path to the template" do
      File.stub(:expand_path) { 'from/path' }
      expect(subject.copy_from_path).to eq('from/path/generators/contributor_covenant/install/templates')
    end
  end

  describe "#copy_to_path" do
    it "returns the current director" do
      expect(subject.copy_to_path).to eq(Dir.pwd)
    end
  end
end
