require "rake"
require "rake/clean"

task default: :yard

desc "Generate documentation with YARD"
task :yard do
  sh "bundle", "exec", "yard"
end

desc "Build the site"
task :build do
  sh "bundle", "exec", "jekyll", "build", "--source", "docs"
end

CLEAN.include FileList["_site"]
