module DPLA::MAP
  module Controlled
    class Genre < DPLA::MAP::Concept
      configure :base_uri => 'http://vocab.getty.edu/aat/', :type => 'http://vocab.getty.edu/ontology#Concept'
    end
  end
end
