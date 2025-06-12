# Homebrew RubyDoc

[Homebrew RubyDoc](https://rubydoc.brew.sh) is an online Ruby documentation browser for [Homebrew/brew](https://github.com/Homebrew/brew).

A [GitHub Action](https://github.com/Homebrew/rubydoc.brew.sh/blob/main/.github/workflows/scheduled.yml) is run periodically which generates documentation using [YARD](https://yardoc.org/) and deploys the site to GitHub Pages.

## Usage

Open <https://rubydoc.brew.sh> in your web browser.

To instead run Homebrew RubyDoc locally at <http://localhost:4000>, run:

```bash
git clone https://github.com/Homebrew/rubydoc.brew.sh
cd rubydoc.brew.sh
bundle install
ln -s $(brew --repo) brew
bundle exec rake yard
bundle exec jekyll serve
```

To regenerate the RubyDoc on each request to <http://localhost:8808>, run:

```bash
cd $(brew --repo)/Library/Homebrew
yard server --reload
```

## License

Code is under the [BSD 2-clause "Simplified" License](LICENSE.txt).
