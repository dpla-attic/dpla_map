module DPLA::MAP
  class Agent < ActiveTriples::Resource
    configure :type => RDF::EDM.Agent
    
    property :label, :predicate => RDF::SKOS.prefLabel
    property :providedLabel, :predicate => RDF::DPLA.providedLabel
    property :exactMatch, :predicate => RDF::SKOS.exactMatch
    property :closeMatch, :predicate => RDF::SKOS.closeMatch
  end
end
