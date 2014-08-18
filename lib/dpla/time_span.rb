module DPLA
  class TimeSpan < ActiveTriples::Resource
    configure :type => DPLA::Vocabularies::EDM.TimeSpan

    property :originalSourceDate, :predicate => RDF::SKOS.prefLabel #min:1 max:1
    property :begin, :predicate => DPLA::Vocabularies::EDM.begin
    property :end, :predicate => DPLA::Vocabularies::EDM.end
  end
end
