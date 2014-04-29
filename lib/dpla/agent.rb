module DPLA
  class Agent < ActiveTriples::Resource
    configure :type => DPLA::Vocabularies::EDM.Agent
  end
end
