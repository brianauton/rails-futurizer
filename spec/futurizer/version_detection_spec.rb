require "futurizer/version_detection"

module Futurizer
  describe VersionDetection do
    describe ".current_version" do
      it "checks :ruby against the current ruby version" do
        expect(SystemInfo).to receive(:ruby_version) { "myversion" }
        expect(VersionDetection.current_version :ruby).to eq "myversion"
      end

      it "checks :rubygems against the current rubygems version" do
        expect(SystemInfo).to receive(:rubygems_version) { "myversion" }
        expect(VersionDetection.current_version :rubygems).to eq "myversion"
      end

      it "checks anything else against the corresponding gem version" do
        expect(SystemInfo).to receive(:gem_version).with(:my_gem) { "myversion" }
        expect(VersionDetection.current_version :my_gem).to eq "myversion"
      end
    end
  end
end
