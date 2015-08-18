module DPLA::MAP
  module Controlled
    class DCMIType < DPLA::MAP::Concept
        configure :type => RDF::RDFS.Class, 
                  :base_uri => RDF::URI('http://purl.org/dc/dcmitype/')
    end
  end
end
