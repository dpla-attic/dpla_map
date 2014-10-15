module DPLA::MAP
  class Concept < ActiveTriples::Resource
    configure :type => RDF::SKOS.Concept
    
    property :prefLabel, :predicate => RDF::SKOS.prefLabel
    property :note, :predicate => RDF::SKOS.note
    property :scheme, :predicate => RDF::SKOS.inScheme

    alias_method :concept, :prefLabel
    alias_method :concept=, :prefLabel=    
  end
end
