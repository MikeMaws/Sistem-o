# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$( document ).on('turbolinks:load', () ->
      $('form').on('click', '.add_puclets', (event)->
          time = new Date().getTime()
          regexp = new RegExp($(this).data('id'), 'g')
          $(this).before($(this).data('fields').replace(regexp, time))
          event.preventDefault()
      )

      $('form').on('click', '.add_material_didatico', (event)->
          time = new Date().getTime()
          regexp = new RegExp($(this).data('id'), 'g')
          $(this).before($(this).data('fields').replace(regexp, time))
          event.preventDefault()
      )
      $('form').on('click', '.add_habilidade', (event)->
          time = new Date().getTime()
          regexp = new RegExp($(this).data('id'), 'g')
          $(this).before($(this).data('fields').replace(regexp, time))
          event.preventDefault()
      )
)
