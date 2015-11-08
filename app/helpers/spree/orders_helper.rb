module Spree
  module OrdersHelper
    def terms_and_conditions_link
      path = Rails.application.routes.named_routes[:spree].path.spec.to_s
      slug = "/terms_and_conditions"
      page_uri = path == '/' ? slug : path + slug
      
      link_to Spree.t('terms_and_conditions.checkbox'), page_uri, { :target => "_blank"}
    end
  end
end
