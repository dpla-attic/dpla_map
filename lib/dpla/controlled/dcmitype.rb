module DPLA
  module Controlled
    class DCMIType < DPLA::Concept
      include LinkedVocabs::Controlled
      configure :type => RDF::RDFS.Class

      use_vocabulary :dcmitype
    end
  end
end
