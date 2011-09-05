class RyFilemanagerCell< Cell::Rails
  include Yard
  
  def image_widget(args)
    @options = args[:options]
    @snip_id = args[:snip_id]
    @file_item = Saphira::FileItem.find(@options[:file_item_id]) if @options[:file_item_id]
    @image = nil
    if @file_item
      @image = @file_item.file
      @image = @image.thumb(@options[:image_size]) unless @options[:image_size].nil? or @options[:image_size].empty?
    end
    render
  end
end