require 'saphira'

RAILSYARD_MOUNTABLE_ENGINES ||= []
RAILSYARD_MOUNTABLE_ENGINES << { 
  :mount => ::Saphira::Engine, 
  :options => { 
    :at => '/admin/filemanager'
    :as => 'filemanager'
  }
}