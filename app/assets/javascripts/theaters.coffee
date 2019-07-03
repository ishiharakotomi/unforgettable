$ ->
  $("#theater_postcode").jpostal({
    postcode : [ "#theater_postcode" ],
    address  : {
                  "#theater_prefecture_code" : "%3",
                  "#theater_address_city"            : "%4",
                  "#theater_address_street"          : "%5%6%7"
                }
  })