# Homebrew RubyDoc

[Homebrew RubyDoc](https://rubydoc.brew.sh) is an online Ruby documentation browser for [Homebrew/brew](https://github.com/Homebrew/brew).

A [GitHub Action in Homebrew/brew](https://github.com/Homebrew/brew/blob/master/.github/workflows/apidoc.yml) is run on each commit, which deploys the site to GitHub Pages.

## Usage

Open <https://rubydoc.brew.sh> in your web browser.

To instead run Homebrew RubyDoc locally, run:

```bash
git clone https://github.com/Homebrew/rubydoc.brew.sh
cd rubydoc.brew.sh
bundle install
bundle exec jekyll serve --source docs
```

## License

Code is under the [BSD 2-clause "Simplified" License](LICENSE.txt).
