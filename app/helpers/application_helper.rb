module ApplicationHelper
  def head_js_include(*js_files, &proc)
    paths = js_files.map {|p| javascript_path p}
    text = "<script>head.js("
    paths.each do |p|
      text << "\"#{p}\","
    end
    if block_given?
      text << "function(){\n"
      text << capture(&proc)
      text << "}\n"
    end
    text.chomp! "," 
    text << ");</script>"
    return raw(text)
  end
end
