# Guard::Addremove

This guard allows you execute shell commands whenever files are added or removed.
It is very much like guard-shell, but ignores changes to existing files.


## Install

Make sure you have [guard](http://github.com/guard/guard) installed.

Install the gem with:

    gem install guard-addremove

Or add it to your Gemfile:

    gem 'guard-addremove'

And then add a basic setup to your Guardfile:

    guard init addremove


## Usage

This guard was originally written to allow the removal of caches when the filesystem changes.
This can be helpful in combination with vim's plugins CtrlP or Command-T. Find a quick guide how
to use it in my [blog](http://www.hacksrus.net/blog/2012/10/using-vims-ctrlp/).

``` ruby
guard :addremove do
  watch /.*/ do |m|
    `echo "#{m[0]} has been added or removed."`
  end
end
```

will simply print a message telling you a file has been added or removed.
