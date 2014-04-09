module DPLA
  class Agent < ActiveFedora::Rdf::Resource
    configure :type => DPLA::Vocabularies::EDM.Agent
  end
end
