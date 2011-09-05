class RyFilemanagerCell< Cell::Rails
  include Yard
  
  def image_widget(args)
    @options = args[:options]
    @snip_id = args[:snip_id]
    @file_item = Saphira::FileItem.find(@options[:file_item_id]) if @options[:file_item_id]
    @image = nil
    if @file_item
      @image = @file_item.file
      unless @options[:image_size].nil? or @options[:image_size].empty?
        @options[:image_size].split(' ').each do |size|
          @image = @image.thumb(size)
        end
      end
    end
    render
  end
end