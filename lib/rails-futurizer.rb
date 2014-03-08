require "futurizer/version_detection"

module Futurizer
  def self.detected?(*args)
    VersionDetection.detected?(*args)
  end
end
