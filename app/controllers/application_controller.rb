class ApplicationController < ActionController::Base
  helper ContentfulRails::MarkdownHelper
  before_action :load_global_settings

  def load_global_settings
    @global_settings = Content::GlobalSettings.first
  end
end
