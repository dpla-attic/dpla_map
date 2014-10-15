module DPLA::MAP
  class Agent < ActiveTriples::Resource
    configure :type => RDF::EDM.Agent
    
    property :label, :predicate => RDF::SKOS.prefLabel
    property :sameAs, :predicate => RDF::OWL.sameAs
  end
end
