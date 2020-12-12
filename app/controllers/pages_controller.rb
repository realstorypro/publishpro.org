class PagesController < ApplicationController
  def index
    @page_title = 'The Baddest Storytelling Platform on The Planet'
    @page_description = 'Tell better stories, own your content, build an engaged audience, and turn your visitors into paying clients, all with the help of Story Pro.'
    @header_class = 'black inverted with-padding'
    @no_subscribe = true
  end
end
