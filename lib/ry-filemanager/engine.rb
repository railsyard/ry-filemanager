require "ry-filemanager/saphira_application_controller_extension"

module RyFilemanager
  class Engine < Rails::Engine
    isolate_namespace RyFilemanager
    
    config.to_prepare do
      ::Saphira::ApplicationController.send :include, RyFilemanager::SaphiraApplicationControllerExtension
    end
  end
end