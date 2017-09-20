module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Portfolio | My Portfolio Website"
    @seo_keywords = "Yusuke's portfolio"
  end
end