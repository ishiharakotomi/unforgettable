# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
$(document).on 'turbolinks:load',->
  $("#contact_postcode").jpostal({
    postcode : [ "#contact_postcode" ],
    address  : {
                  "#contact_prefecture_name" : "%3",
                  "#contact_address_city"            : "%4",
                  "#contact_address_street"          : "%5%6%7"
                }
  })