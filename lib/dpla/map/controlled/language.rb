module DPLA::MAP
  module Controlled
    class Language < DPLA::MAP::Concept
      include LinkedVocabs::Controlled

      configure :base_uri => "http://lexvo.org/id/iso639-3/", :rdf_label => RDF::URI('http://www.w3.org/2008/05/skos#prefLabel')

      use_vocabulary :iso_639_3

      property :prefLabel, :predicate => RDF::SKOS.prefLabel
    end
  end
end
