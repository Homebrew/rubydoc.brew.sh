require "rake"
require "rake/clean"

task default: :yard

desc "Generate documentation with YARD"
task :yard do
  sh "find", "docs", "-mindepth", "1", "!", "-name", "_config.yml", "!", "-name", "CNAME", "-delete"
  sh "bundle", "exec", "yard", "doc", "--plugin", "sorbet"
end

desc "Build the site"
task :build do
  sh "bundle", "exec", "jekyll", "build", "--source", "docs"
end

CLEAN.include FileList["_site"]
