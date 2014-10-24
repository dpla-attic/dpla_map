require 'active_triples'
require 'linked_vocabs'

require 'date'

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
    LinkedVocabs.add_vocabulary(:aat, 'http://vocab.getty.edu/aat/')
    LinkedVocabs.add_vocabulary(:iso_639_3, 'http://lexvo.org/id/iso639-3/')
    LinkedVocabs.add_vocabulary(:gn, 'http://www.geonames.org/ontology#', :source => 'http://www.geonames.org/ontology/ontology_v3.1.rdf', :fetch => true)


    autoload :SourceResource,     'dpla/map/source_resource'
    autoload :Collection,         'dpla/map/collection'
    autoload :Place,              'dpla/map/place'
    autoload :TimeSpan,           'dpla/map/time_span'
    autoload :Aggregation,        'dpla/map/aggregation'
    autoload :WebResource,        'dpla/map/web_resource'
    autoload :Agent,              'dpla/map/agent'
    autoload :Concept,            'dpla/map/concept'
    autoload :RightsStatement,    'dpla/map/rights_statement'

    autoload :Controlled,         'dpla/map/controlled'

  end
end
