module DefaultPageContent
	extend ActiveSupport::Concern
included do
  before_action :set_page_defaults
end

def set_page_defaults
  @page_title = "DevcampPortfolio1 | My Portfolio Site"
  @seo_keywords = "Zaka Ali Portfolio"
end

end