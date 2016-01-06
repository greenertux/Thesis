# Web service
# Watson Content Analytics REST API using query text that is supplied to the endpoint
# Returns the results as JSON

# Created by Tristan Hoffmann, 01/04/2016
begin # start try-equivalent block
response = HttpClient.request("http://127.0.0.1:8393/api/v10/search/facet",
  query: {
    "output"       => "application/json",
    "collection"   => "col_74507",
    "queryLang"    => "en",
    "linguistic"   => "engine",
    "documentPart" => "aggregation",
    "summaryLengthRatio" => "100",
    "enableHref"   => "false",
    "absoluteHref" => "false",
    "enableFacetPath" => "true",
    "facet"        => '{"count":20,"depth":2,"namespace":"keyword","id":"$.keywords"}',
    "query"        => params[:query],
    "sentiment"    => "false"
  }
)

# Returns the Watson Explorer Content Analytics API response, parsed as JSON

JSON.parse(response.body, symbolize_names: true)
rescue StandardError # Will catch all (standard) exceptions
  "Error accessing WCA API"
end