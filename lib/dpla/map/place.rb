module DPLA::MAP
  class Place < ActiveTriples::Resource
    configure :type => RDF::EDM.Place

    validates_presence_of :label

    property :label, :predicate => RDF::SKOS.prefLabel
    property :providedLabel, :predicate => RDF::DPLA.providedLabel
    property :lat, :predicate => RDF::GEO.lat
    property :long, :predicate => RDF::GEO.long
    property :alt, :predicate => RDF::GEO.alt
    #property :geometry, :predicate => RDF::GEOJSON.geometry, :class_name => DPLA::MAP::Geometry
    property :parentFeature, :predicate => RDF::GN.parentFeature, :class_name => 'DPLA::MAP::Place'
    property :countryCode, :predicate => RDF::GN.countryCode
    property :exactMatch, :predicate => RDF::SKOS.exactMatch
    property :closeMatch, :predicate => RDF::SKOS.closeMatch
  end
end
