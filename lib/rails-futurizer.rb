require "futurizer/version_detection"

module Futurizer
  def self.detected?(*args)
    VersionDetection.detected?(*args)
  end

  def self.apply_patches
    require "futurizer/patches/actionpack/filter_parameters.rb"
    require "futurizer/patches/activerecord/association_proxy.rb"
  end

  def self.require_dependency file
    require file
  end
end

Futurizer.apply_patches
