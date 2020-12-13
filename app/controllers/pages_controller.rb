# frozen_string_literal: true

class PagesController < ApplicationController
  require 'rich_text_renderer'
  before_action :create_renderer

  def index
    @page_title = 'Publish Pro | Making internet a better place'
    @page_description = ''
  end

  private

  def create_renderer
    @renderer = RichTextRenderer::Renderer.new
  end
end
