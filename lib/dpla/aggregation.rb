module DPLA
  class Aggregation < ActiveTriples::Resource
    configure :type => DPLA::Vocabularies::ORE.Aggregation

    validates_presence_of :originalRecord, :isShownAt, :object, :provider

    property :aggregatedSourceResource, :predicate => DPLA::Vocabularies::EDM.aggregatedCHO, :class_name => 'DPLA::SourceReource' # should allow all edm:providedCHOs
    property :dataProvider, :predicate => DPLA::Vocabularies::EDM.dataProvider
    property :originalRecord, :predicate => DPLA::Vocabularies::DPLA.originalRecord
    property :hasView, :predicate => DPLA::Vocabularies::EDM.hasView, :class_name => 'DPLA::WebResource'
    property :intermediateProvider, :predicate => DPLA::Vocabularies::DPLA.intermediateProvider
    property :isShownAt, :predicate => DPLA::Vocabularies::EDM.isShownAt, :class_name => 'DPLA::WebResource'
    property :object, :predicate => DPLA::Vocabularies::EDM.object, :class_name => 'DPLA::WebResource'
    property :provider, :predicate => DPLA::Vocabularies::EDM.provider
    property :rightsStatement, :predicate => DPLA::Vocabularies::EDM.rights, :class_name => 'DPLA::RightsStatement'

  end
end
