lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "video_upload_field/version"

Gem::Specification.new do |spec|
  spec.name          = "video_upload_field"
  spec.version       = VideoUploadField::VERSION
  spec.authors       = ["ian"]
  spec.email         = ["ian.wang@pixelforcesystems.com.au"]

  spec.summary       = %q{Add direct upload}
  spec.description   = %q{Add direct upload}
  spec.homepage      = "https://github.com/ian-wang0403/video_upload_field"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ian-wang0403/video_upload_field"
  spec.metadata["changelog_uri"] = "https://github.com/ian-wang0403/video_upload_field"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'rails', '~> 6.0.3.5'
  spec.add_dependency 'simple_form', '~> 5.0.2'
  spec.add_dependency 'mini_magick', '~> 4.8'


  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
