module DPLA::MAP
  class Concept
    include ActiveTriples::RDFSource

    configure :type => RDF::Vocab::SKOS.Concept

    property :prefLabel,     :predicate => RDF::Vocab::SKOS.prefLabel
    property :providedLabel, :predicate => RDF::DPLA.providedLabel
    property :exactMatch,    :predicate => RDF::Vocab::SKOS.exactMatch
    property :closeMatch,    :predicate => RDF::Vocab::SKOS.closeMatch
    property :note,          :predicate => RDF::Vocab::SKOS.note
    property :scheme,        :predicate => RDF::Vocab::SKOS.inScheme

    alias_method :concept,  :prefLabel
    alias_method :concept=, :prefLabel=
  end
end
