module DPLA::MAP
  class TimeSpan < ActiveTriples::Resource
    configure :type => RDF::EDM.TimeSpan
    
    validates_presence_of :providedLabel

    property :providedLabel, :predicate => RDF::DPLA.providedLabel    
    property :begin, :predicate => RDF::EDM.begin
    property :end, :predicate => RDF::EDM.end
  end
end
