omnibus-community-software
==========================

A place for [Omnibus](https://github.com/opscode/omnibus) software definitions provided by the community.

# Why?

Because Opscode [don't want to support software that they don't use](https://www.getchef.com/blog/2014/06/30/omnibus-a-look-forward/).

I think that's completely fine.

But I also think that Omnibus is a really useful tool and will benefit from more "examples in the wild".

# Usage

To use software definitions from this repository in your own omnibus project(s), update your `Gemfile`.

```ruby
# Use community software definitions.
gem 'omnibus-community-software', :git => 'https://github.com/bsnape/omnibus-community-software.git', :branch => 'master'
```

Then add this line in the `omnibus.rb` file at the root of your project:

```ruby
software_gems ['omnibus-community-software']
```

And that's it! If there are any duplications, omnibus should default to the software profiles in your own project.
