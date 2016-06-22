module ApplicationHelper
  def controller_has_js_asset?
    Rails.application.assets.find_asset "#{controller_name}.js"
  end
end
