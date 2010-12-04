module Util
  def self.page_no(params)
    if (params.include? :page)
      params[:page]
    else
      1
    end
  end
end
