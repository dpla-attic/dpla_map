module DPLA::MAP
  class SourceResource
    include ActiveTriples::RDFSource

    configure :base_uri => 'http://dp.la/api/items/', :type => RDF::DPLA.SourceResource

    validates_presence_of :rights, :title

    property :alternative,  :predicate => RDF::Vocab::DC.alternative
    property :collection,   :predicate => RDF::Vocab::DC.isPartOf,
             :class_name => 'DPLA::MAP::Collection'

    property :contributor,  :predicate => RDF::Vocab::DC.contributor,
             :class_name => 'DPLA::MAP::Agent'
    property :creator,      :predicate => RDF::Vocab::DC.creator,
             :class_name => 'DPLA::MAP::Agent'

    property :date,         :predicate => RDF::Vocab::DC11.date,
             :class_name => 'DPLA::MAP::TimeSpan'
    property :description,  :predicate => RDF::Vocab::DC.description
    property :extent,       :predicate => RDF::Vocab::DC.extent
    property :dcformat,     :predicate => RDF::Vocab::DC11.format
    property :genre,        :predicate => RDF::EDM.hasType,
             :class_name => 'DPLA::MAP::Controlled::Genre'

    property :identifier,   :predicate => RDF::Vocab::DC11.identifier
    property :language,     :predicate => RDF::Vocab::DC.language,
             :class_name => 'DPLA::MAP::Controlled::Language'
    property :spatial,      :predicate => RDF::Vocab::DC.spatial,
             :class_name => 'DPLA::MAP::Place'
    property :publisher,    :predicate => RDF::Vocab::DC.publisher,
             :class_name => 'DPLA::MAP::Agent'
    property :relation,     :predicate => RDF::Vocab::DC11.relation
    property :isReplacedBy, :predicate => RDF::DPLA.isReplacedBy
    property :replaces,     :predicate => RDF::DPLA.replaces
    property :rights,       :predicate => RDF::Vocab::DC11.rights
    property :rightsHolder, :predicate => RDF::Vocab::DC.rightsHolder, :class_name => 'DPLA::MAP::Agent'
    property :subject,      :predicate => RDF::Vocab::DC.subject, :class_name => 'DPLA::MAP::Concept'
    property :temporal,     :predicate => RDF::Vocab::DC.temporal, :class_name => 'DPLA::MAP::TimeSpan'
    property :title,        :predicate => RDF::Vocab::DC.title
    property :dctype,       :predicate => RDF::Vocab::DC.type,
             :class_name => 'DPLA::MAP::Controlled::DCMIType'
  end
end
