require "ry-filemanager/version"
require "ry-filemanager/engine"
require File.join(File.dirname(__FILE__), '../app/cells/ry_filemanager_cell')

RAILSYARD_WIDGET_PATHS ||= []
RAILSYARD_WIDGET_PATHS << File.join(File.dirname(__FILE__), '../app/cells')

module RyFilemanager
end
