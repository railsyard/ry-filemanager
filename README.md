ry-filemanager
==============

The ry-filemanager extends the Railsyard CMS with a file manager. This gem is based on saphira, which is a file manager written in rails.

Features
--------
* Create folders
* Upload files
* Tag files
* Automatically read EXIF data from images

To-Do
-----
* Widgets for displaying files in the frontend (i.e. show image, image gallery and image slider)

Requirements
------------
* Rails 3.1.x
* saphira >= 0.1.0.beta2
* Some gems - check Gemfile

Installation
------------
Add this to your Gemfile:
```ruby
gem 'saphira', "~> 0.1.0.beta2"
gem 'ry-filemanager', :git => 'git://github.com/spieker/ry-filemanager.git'
```