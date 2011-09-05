module RyFilemanager
  class Engine < Rails::Engine
    isolate_namespace RyFilemanager
    
    config.to_prepare do
      require "ry-filemanager/saphira_application_controller_extension"
      ::Saphira::ApplicationController.send :include, RyFilemanager::SaphiraApplicationControllerExtension
    end
  end
end