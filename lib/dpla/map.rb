
require 'active_triples'

require 'date'

require 'rdf/turtle'
require 'rdf/vocab'
require 'rdf/dpla'

require 'rdf/aat'
require 'rdf/dcmitype'
require 'rdf/edm'
require 'rdf/geonames'
require 'rdf/gn'
require 'rdf/iso_639_3'
require 'rdf/ore'

module DPLA
  module MAP
    autoload :SourceResource,     'dpla/map/source_resource'
    autoload :Collection,         'dpla/map/collection'
    autoload :Place,              'dpla/map/place'
    autoload :TimeSpan,           'dpla/map/time_span'
    autoload :Aggregation,        'dpla/map/aggregation'
    autoload :WebResource,        'dpla/map/web_resource'
    autoload :Agent,              'dpla/map/agent'
    autoload :Concept,            'dpla/map/concept'
    autoload :RightsStatement,    'dpla/map/rights_statement'
    autoload :CONTEXT,            'dpla/map/context'
    autoload :FRAME,              'dpla/map/frame'

    autoload :Controlled,         'dpla/map/controlled'

  end
end
