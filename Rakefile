require "rake"
require "rake/clean"

DOCS_DIR = "#{__dir__}/docs"

task default: :yard

desc "Generate documentation with YARD"
task :yard do
  sh "find", DOCS_DIR, "-mindepth", "1", "!", "-name", "_config.yml", "!", "-name", "CNAME", "-delete"
  cd "brew/Library/Homebrew" do
    sh "bundle", "exec", "yard", "doc", "--output", DOCS_DIR
  end
end

desc "Build the site"
task :build do
  sh "bundle", "exec", "jekyll", "build", "--source", DOCS_DIR
end

CLEAN.include FileList["_site"]
