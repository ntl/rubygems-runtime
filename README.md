# RubyGems Runtime

An alternative RubyGems loader that pulls in only the minimal components required at runtime, instead of the full RubyGems stack used during gem installation. Ideal for use with standalone bundles, allowing RubyGems to be disabled via --disable-gems while still providing essential runtime functionality.

## Usage

1. Add `rubygems/runtime` to `Gemfile`
2. Use `bundle install --standalone`, which generates a freestanding `bundler/setup.rb` that doesn't depend on RubyGems or Bundler
3. Disable RubyGems by either running the Ruby program via `ruby --disable-gems` or by adding `--disable-gems` to `RUBYOPT`:

   ```sh
   ruby --disable-gems script/rails server
   ```

   -or-

   ```sh
   export RUBYOPT="--disable-gems"

   script/rails server
   ```

## Alternate Usage (Simpler)

Add `install-gems.sh` from [Bundler Standalone Improvements](https://github.com/ntl/bundler-standalone-improvements) and use it to install gems, rather than invoking `bundle` directly.

## License

The `rubygems-runtime` library is released under the [MIT License](./MIT-License.txt)
