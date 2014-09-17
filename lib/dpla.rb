require 'active_triples'
require 'linked_vocabs'

module DPLA
  LinkedVocabs.add_vocabulary(:iso_639_3, 'http://lexvo.org/id/iso639-3/')
  LinkedVocabs.add_vocabulary(:gn, 'http://www.geonames.org/ontology#', :source => 'http://www.geonames.org/ontology/ontology_v3.1.rdf', :fetch => true)

  autoload :SourceResource,     'dpla/source_resource'
  autoload :Collection,         'dpla/collection'
  autoload :Place,              'dpla/place'
  autoload :TimeSpan,           'dpla/time_span'
  autoload :Aggregation,        'dpla/aggregation'
  autoload :WebResource,        'dpla/web_resource'
  autoload :Agent,              'dpla/agent'
  autoload :Concept,            'dpla/concept'
  autoload :RightsStatement,    'dpla/rights_statement'

  autoload :Controlled,         'dpla/controlled'
end
