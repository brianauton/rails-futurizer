require "rails-futurizer"

module Futurizer
  describe "association_proxy patch" do
    it "defines the correct method when the required dependencies are present" do
      allow(SystemInfo).to receive(:ruby_version) { Gem::Version.new "2.1.0" }
      allow(SystemInfo).to receive(:gem_version).with(:activerecord) { Gem::Version.new "2.3.4" }
      allow(Futurizer).to receive(:require)

      expect(defined? ActiveRecord).to be_nil
      load "futurizer/patches/activerecord/association_proxy.rb"
      expect(ActiveRecord::Associations::AssociationProxy.instance_methods).to include :send
    end
  end
end
