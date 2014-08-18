module DPLA
  class Agent < ActiveTriples::Resource
    configure :base_uri => 'http://dp.la/api/contributor/', :type => DPLA::Vocabularies::EDM.Agent
    
    property :name, :predicate => RDF::SKOS.prefLabel
  end
end
