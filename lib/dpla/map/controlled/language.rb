module DPLA::MAP
  module Controlled
    class Language < DPLA::MAP::Concept
      configure :base_uri  => "http://lexvo.org/id/iso639-3/", 
                :rdf_label => RDF::Vocab::SKOS.prefLabel,
                :type      => RDF::Vocab::DC.LinguisticSystem
    end
  end
end
