module DPLA::MAP
  module Controlled
    class DCMIType < DPLA::MAP::Concept
      include LinkedVocabs::Controlled
      configure :type => RDF::RDFS.Class

      use_vocabulary :dcmitype
    end
  end
end
