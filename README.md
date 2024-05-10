# Homebrew RubyDoc

[Homebrew RubyDoc](https://rubydoc.brew.sh) is an online Ruby documentation browser for [Homebrew/brew](https://github.com/Homebrew/brew).

A [GitHub Action](https://github.com/Homebrew/rubydoc.brew.sh/blob/master/.github/workflows/scheduled.yml) is run periodically, which deploys the site to GitHub Pages.

## Usage

Open <https://rubydoc.brew.sh> in your web browser.

To instead run Homebrew RubyDoc locally, run:

```bash
git clone https://github.com/Homebrew/rubydoc.brew.sh
cd rubydoc.brew.sh
bundle install
bundle exec jekyll serve --source docs
```

To regenerate the RubyDoc on each request to <http://localhost:8808>, run:

```bash
cd `brew --repo`/Library/Homebrew
yard server --reload
```

## License

Code is under the [BSD 2-clause "Simplified" License](LICENSE.txt).
