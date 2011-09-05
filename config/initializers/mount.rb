require 'saphira'

RAILSYARD_MOUNTABLE_ENGINES ||= []
RAILSYARD_MOUNTABLE_ENGINES << { 
  :mount => { ::Saphira::Engine => "/admin/filemanager" }, 
  :options => { :as => 'filemanager' }
}