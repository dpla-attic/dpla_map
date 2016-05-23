module DPLA::MAP
  class Agent
    include ActiveTriples::RDFSource

    configure :type => RDF::EDM.Agent

    property :label,         :predicate => RDF::Vocab::SKOS.prefLabel
    property :providedLabel, :predicate => RDF::DPLA.providedLabel
    property :exactMatch,    :predicate => RDF::Vocab::SKOS.exactMatch
    property :closeMatch,    :predicate => RDF::Vocab::SKOS.closeMatch
  end
end
