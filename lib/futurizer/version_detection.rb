require "futurizer/system_info"

module Futurizer
  module VersionDetection
    def self.detected?(specifiers)
      specifiers.all?{ |resource, specifier| resource_detected? resource, specifier }
    end

    def self.resource_detected?(resource, specifiers)
      SystemInfo.version_requirement(specifiers).satisfied_by? current_version(resource)
    end

    def self.current_version(resource)
      resource == :ruby ? SystemInfo.ruby_version : SystemInfo.gem_version(resource)
    end
  end
end
