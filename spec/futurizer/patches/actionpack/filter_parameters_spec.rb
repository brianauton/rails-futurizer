require "rails-futurizer"

module Futurizer
  describe "filter_parameters patch" do
    it "defines the correct method when the required dependencies are present" do
      allow(SystemInfo).to receive(:ruby_version) { Gem::Version.new "2.1.0" }
      allow(SystemInfo).to receive(:gem_version).with(:actionpack) { Gem::Version.new "2.3.4" }
      allow(Futurizer).to receive(:require)

      expect(defined? ActionController).to be_nil
      load "futurizer/patches/actionpack/filter_parameters.rb"
      expect(ActionController::Base.private_instance_methods).to include :log_processing_for_parameters
    end
  end
end
