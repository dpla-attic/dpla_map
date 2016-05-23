module DPLA::MAP
  class Place
    include ActiveTriples::RDFSource

    configure :type => RDF::EDM.Place

    validates_presence_of :label

    property :label,         :predicate => RDF::Vocab::SKOS.prefLabel
    property :providedLabel, :predicate => RDF::DPLA.providedLabel
    property :lat,           :predicate => RDF::Vocab::GEO.lat
    property :long,          :predicate => RDF::Vocab::GEO.long
    property :alt,           :predicate => RDF::Vocab::GEO.alt
    property :parentFeature, :predicate => RDF::GN.parentFeature,
             :class_name => 'DPLA::MAP::Place'
    property :countryCode,   :predicate => RDF::GN.countryCode
    property :exactMatch,    :predicate => RDF::Vocab::SKOS.exactMatch
    property :closeMatch,    :predicate => RDF::Vocab::SKOS.closeMatch

    #property :geometry, :predicate => RDF::GEOJSON.geometry, :class_name => DPLA::MAP::Geometry
  end
end
