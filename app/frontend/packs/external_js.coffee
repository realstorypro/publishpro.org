import jquery_address from 'jquery-address'
import semantic_js from '../semantic/dist/semantic.min'
import Rails from '@rails/ujs'
import Turbolinks from 'turbolinks'

Rails.start()
Turbolinks.start()

$(document).on 'turbolinks:load', ->

  # trigger segment analytics
  if (window.analytics)
    window.analytics.page()
