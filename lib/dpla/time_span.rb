module DPLA
  class TimeSpan < ActiveFedora::Rdf::Resource
    configure :type => DPLA::Vocabularies::EDM.TimeSpan

    property :date, :predicate => RDF::DC11.date
    property :begin, :predicate => DPLA::Vocabularies::EDM.begin
    property :end, :predicate => DPLA::Vocabularies::EDM.end
  end
end
