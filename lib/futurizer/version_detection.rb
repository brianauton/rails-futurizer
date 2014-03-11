require "futurizer/system_info"

module Futurizer
  module VersionDetection
    def self.detected?(specifiers)
      specifiers.all?{ |resource, specifier| resource_detected? resource, specifier }
    end

    def self.resource_detected?(resource, specifiers)
      version = current_version(resource)
      version && SystemInfo.version_requirement(specifiers).satisfied_by?(version)
    end

    def self.current_version(resource)
      if resource == :ruby
        SystemInfo.ruby_version
      elsif resource == :rubygems
        SystemInfo.rubygems_version
      else
        SystemInfo.gem_version resource
      end
    end
  end
end
