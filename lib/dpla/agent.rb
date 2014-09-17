module DPLA
  class Agent < ActiveTriples::Resource
    configure :base_uri => 'http://dp.la/api/contributor/', :type => RDF::EDM.Agent
    
    property :name, :predicate => RDF::SKOS.prefLabel
  end
end
