module DPLA
  class TimeSpan < ActiveTriples::Resource
    configure :type => DPLA::Vocabularies::EDM.TimeSpan
    
    validates_presence_of :originalSourceDate # validates_cardinality_of ... :count => 1?
    
    property :originalSourceDate, :predicate => RDF::SKOS.prefLabel
    property :begin, :predicate => DPLA::Vocabularies::EDM.begin
    property :end, :predicate => DPLA::Vocabularies::EDM.end
  end
end
