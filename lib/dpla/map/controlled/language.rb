module DPLA::MAP
  module Controlled
    class Language < DPLA::MAP::Concept
      include LinkedVocabs::Controlled

      configure :base_uri => "http://lexvo.org/id/iso639-3/", 
                :rdf_label => RDF::SKOS.prefLabel,
                :type => RDF::DC.LinguisticSystem

      use_vocabulary :iso_639_3
    end
  end
end
