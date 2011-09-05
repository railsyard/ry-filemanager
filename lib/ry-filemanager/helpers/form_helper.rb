module RyFilemanager
  module Helpers
    module FormHelper
      extend ActiveSupport::Concern
    
      include ActionView::Helpers::TagHelper
      include ActionView::Helpers::JavaScriptHelper
    
      def ry_option_field_ry_filemanager_file_selector(object_name, method, options = {})
        output_buffer = ActiveSupport::SafeBuffer.new
        output_buffer << select(object_name, method, nested_set_options(Saphira::FileItem) {|i| "#{'-' * i.level} #{i.name}" }, 
          :selected => options[:value],
          :disabled => Saphira::FileItem.where(:item_type => Saphira::FileItem::TYPE_FOLDER).map { |r| r.id }
        )
        output_buffer
      end
    end
  end
end