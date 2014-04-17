# flickr.rb

http://github.com/RaVbaker/flickr

[![Gem Version](https://badge.fury.io/rb/flickr.rb.svg)](http://badge.fury.io/rb/flickr.rb)

## DESCRIPTION:

An insanely easy interface to the Flickr photo-sharing service. By Scott Raymond. (& updated May 2008 by Chris Taggart, http://pushrod.wordpress.com & maintained since May 2010 by me - Rafal Piekarski)

It's a simple interface for using Flickr API - [https://www.flickr.com/services/api/](https://www.flickr.com/services/api/)

## FEATURES/PROBLEMS:

The flickr gem (famously featured in a RubyonRails screencast) had broken with Flickr's new authentication scheme and updated API.
This has now been largely corrected, though not all current API calls are supported yet.

## SYNOPSIS:

    require 'flickr'
    flickr = Flickr.new('some_flickr_api_key')    # create a flickr client (get an API key from http://api.flickr.com/services/api/)
    user = flickr.users('sco@scottraymond.net')   # lookup a user
    user.name                                     # get the user's name
    user.location                                 # and location
    user.photos                                   # grab their collection of Photo objects...
    user.groups                                   # ...the groups they're in...
    user.contacts                                 # ...their contacts...
    user.favorites                                # ...favorite photos...
    user.photosets                                # ...their photo sets...
    user.tags                                     # ...their tags...
    user.popular_tags							  							# ...and their popular tags
    recentphotos = flickr.photos                  # get the 100 most recent public photos
    photo = recentphotos.first                    # or very most recent one
    photo.url                                     # see its URL,
    photo.title                                   # title,
    photo.description                             # and description,
    photo.owner                                   # and its owner.
    File.open(photo.filename, 'w') do |file|
      file.puts p.file                            # save the photo to a local file
    end
    flickr.photos.each do |p|                     # get the last 100 public photos...
      File.open(p.filename, 'w') do |f|
        f.puts p.file('Square')                   # ...and save a local copy of their square thumbnail
      end
    end

## REQUIREMENTS:

* Xmlsimple gem

## INSTALLATION:

Add this line to your application's Gemfile:

    gem 'flickr.rb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flickr.rb


* Gem homepage: [http://rubygems.org/gems/flickr.rb](http://rubygems.org/gems/flickr.rb)

## CONFIGURING:

If you want to use this gem/plugin with Rails (for version 3) you can create configuration file in /config directory with specified api connection settings. For example:

    development:
      api_key: SomeLongApiKey
      shared_secret: secret!
      auth_token: authSecretToken

    beta:
      api_key: SomeLongApiKeyBeta
      shared_secret: secretBeta!
      auth_token: authSecretTokenBeta



## CONTRIBUTING

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## THANKS

* Scott Raymond
* Patrick Plattes
* Chris Taggart

## LICENSE

MIT License , see `LICENSE` for more details.

© 2010 - 2014 Rafal "RaVbaker" Piekarski
