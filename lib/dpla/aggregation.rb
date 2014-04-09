module DPLA::ApplicationProfile
  class Aggregation < ActiveFedora::Rdf::Resource
    configure :type => DPLA::Vocabularies::ORE.Aggregation

    property :aggregatedSourceResource, :predicate => DPLA::Vocabularies::EDM.aggregatedCHO
    property :dataProvider, :predicate => DPLA::Vocabularies::EDM.dataProvider
    property :originalRecord, :predicate => DPLA::Vocabularies::DPLA.originalRecord
    property :hasView, :predicate => DPLA::Vocabularies::EDM.hasView, :class_name => 'DPLA::ApplicationProfile::WebResource'
    property :isShownAt, :predicate => DPLA::Vocabularies::EDM.isShownAt
    property :object, :predicate => DPLA::Vocabularies::EDM.object
    property :provider, :predicate => DPLA::Vocabularies::EDM.provider, :class_name => 'DPLA::ApplicationProfile::Agent'

  end
end
