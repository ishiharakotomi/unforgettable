# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
$(document).on 'turbolinks:load',->
  $("#contact_request_postcode").jpostal({
    postcode : [ "#contact_request_postcode" ],
    address  : {
                  "#contact_request_prefecture_name" : "%3",
                  "#contact_request_address_city"            : "%4",
                  "#contact_request_address_street"          : "%5%6%7"
                }
  })