require "ry-filemanager/saphira_application_controller_extension"
require "ry-filemanager/helpers/form_helper"

module RyFilemanager
  class Engine < Rails::Engine
    isolate_namespace RyFilemanager
    
    config.to_prepare do
      ::Saphira::ApplicationController.send :include, RyFilemanager::SaphiraApplicationControllerExtension
      ActionView::Base.send :include, RyFilemanager::Helpers::FormHelper
    end
  end
end