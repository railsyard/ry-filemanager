ry-filemanager
==============

The ry-filemanager extends the Railsyard CMS with a file manager. This gem is based on saphira, which is a file manager written in rails.

Features
--------
* All features saphira (https://github.com/spieker/saphira) provides
* An image widget

To-Do
-----
* Widgets for displaying files in the frontend (i.e. image gallery and image slider)

Requirements
------------
* Rails 3.1.x
* [saphira](https://github.com/spieker/saphira) (>= 0.1.0.beta2): a simple file manager created in RoR as a mountable engine.

Installation
------------
Add this to your Gemfile:

```ruby
gem 'saphira', "~> 0.1.0.beta2"
gem 'ry-filemanager', :git => 'git://github.com/spieker/ry-filemanager.git'
rake saphira:install:migrations
rake db:migrate
```

Image Widget
------------
The image widget can be placed on the page like every other widget in RY. In the settings you can select the image to display. The image size has to be specified as a set of ImageMagick geometry strings separated by a space.

### Examples
These examples are copied from http://markevans.github.com/dragonfly/file.ImageMagick.html

```ruby
'400x300'            # resize, maintain aspect ratio
'400x300!'           # force resize, don't maintain aspect ratio
'400x'               # resize width, maintain aspect ratio
'x300'               # resize height, maintain aspect ratio
'400x300>'           # resize only if the image is larger than this
'400x300<'           # resize only if the image is smaller than this
'50x50%'             # resize width and height to 50%
'400x300^'           # resize width, height to minimum 400,300, maintain aspect ratio
'2000@'              # resize so max area in pixels is 2000
'400x300#'           # resize, crop if necessary to maintain aspect ratio (centre gravity)
'400x300#ne'         # as above, north-east gravity
'400x300se'          # crop, with south-east gravity
'400x300+50+100'     # crop from the point 50,100 with width, height 400,300
```

If you want to combine the manipulations, separate them by a space

```ruby
'438x 438x180+0+330'	# will first resize the image to a with of 438px and then crop it to a size of 438x180px started at 330px from the top.
```