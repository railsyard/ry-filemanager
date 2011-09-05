require 'saphira'

RAILSYARD_MOUNTABLE_ENGINES ||= []
RAILSYARD_MOUNTABLE_ENGINES << { ::Saphira::Engine => "/admin/filemanager", :as => 'filemanager' }