module DPLA::MAP
  class TimeSpan
    include ActiveTriples::RDFSource

    configure :type => RDF::EDM.TimeSpan

    validates_presence_of :providedLabel

    property :prefLabel,     :predicate => RDF::Vocab::SKOS.prefLabel
    property :providedLabel, :predicate => RDF::DPLA.providedLabel
    property :begin,         :predicate => RDF::EDM.begin
    property :end,           :predicate => RDF::EDM.end
  end
end
