# fish 2.2.0 does not include native snippet support. Upgrade to fish >= 2.3.0
# or append the following code to your ~/.config/fish/config.fish.

# for file in ~/.config/fish/conf.d/*.fish
#     source $file
# end

set -l bundler_executables \
  annotate      \
  cap           \
  capify        \
  cucumber      \
  dashing       \
  guard         \
  kitchen       \
  middleman     \
  nanoc         \
  puma          \
  rackup        \
  rainbows      \
  rake          \
  rspec         \
  rubocop       \
  ruby          \
  shotgun       \
  sidekiq       \
  spec          \
  spinach       \
  spork         \
  thin          \
  thor          \
  unicorn       \
  unicorn_rails

for executable in $bundler_executables
  function $executable --inherit-variable executable
    command bundle exec $executable $argv
  end
end
