# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
$(document).on 'turbolinks:load',->
  $("#theater_postcode").jpostal({
    postcode : [ "#theater_postcode" ],
    address  : {
                  "#theater_prefecture_name" : "%3",
                  "#theater_address_city"            : "%4",
                  "#theater_address_street"          : "%5%6%7"
                }
  })