module Futurizer
  module SystemInfo
    def self.version_requirement(specifiers)
      Gem::Requirement.new(*specifiers)
    end

    def self.gem_version(gem_name)
      Gem.loaded_specs[gem_name.to_s].version
    end

    def self.ruby_version
      Gem.ruby_version
    end
  end
end
