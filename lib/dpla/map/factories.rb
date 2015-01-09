require 'dpla/map'

FactoryGirl.define do

  factory :source_resource, class: DPLA::MAP::SourceResource do
    alternative 'Stonewall Inn Graffiti'
    collection { |collection| collection.association :collection, :strategy => :build }
    contributor { |person| person.association :agent, :strategy => :build }
    creator { |person| person.association :agent, :label => 'Davies, Diana (1938-)', :strategy => :build }
    date { |timespan| timespan.association :timespan, :strategy => :build }
    description 'Window of the Stonewall Bar N.Y. 1969. The other half of the graffiti was erased by the time Diana photographed it.'
    extent '10x12 cm'
    format 'Silver Gelatin Print'
    genre { |genre| genre.association :genre, :strategy => :build }
    identifier '510d47e3-57d2-a3d9-e040-e00a18064a99'
    language { |language| language.association :language, :strategy => :build }
    spatial { |place| place.association :place, :strategy => :build }
    publisher { |agent| agent.association :agent, :label => 'Penguin Books', :strategy => :build }
    relation ['Stonewall Inn [1]', 'Stonewall Inn [3]']
    #isReplacedBy
    #replaces
    rights "The New York Public Library is interested in learning more about items you've seen on our websites or elsewhere online. If you have any more information about an item or its copyright status, we want to hear from you. Please contact DigitalCollections@nypl.org with your contact information and a link to the relevant content."
    subject { |concept| concept.association :concept, :strategy => :build }
    temporal '1969'
    title 'Stonewall Inn [2]'
    dctype { |type| type.association :dctype, :strategy => :build }
  end

  factory :aggregation, class: DPLA::MAP::Aggregation do
    sourceResource { |sr| sr.association :source_resource, :strategy => :build }
    dataProvider { |agent| agent.association :agent, :label => 'Manuscripts and Archives Division. The New York Public Library', :strategy => :build }
    originalRecord { RDF::URI('http://api.dp.la/originalRecord/12345') }
    hasView { |wr| wr.association :web_resource, :strategy => :build }
    intermediateProvider  { |agent| agent.association :agent, :label => 'The New York Public Library', :strategy => :build }
    isShownAt  { |wr| wr.association :isShownAt, :strategy => :build }
    object { |wr| wr.association :object, :strategy => :build }
    preview { |wr| wr.association :preview, :strategy => :build }
    provider  { |agent| agent.association :agent, :label => 'The New York Public Library', :strategy => :build }
    rightsStatement { ActiveTriples::Resource.new('http://creativecommons.org/publicdomain/mark/1.0/') }
  end

  factory :web_resource, class: DPLA::MAP::WebResource do
    format 'image/tiff'
    rights 'Public Domain'
    rightsStatement { ActiveTriples::Resource.new('http://creativecommons.org/publicdomain/mark/1.0/') }

    factory :preview do
      initialize_with { new('http://images.nypl.org/index.php?id=1582254&t=t') }
    end

    factory :object do
      initialize_with { new('http://images.nypl.org/index.php?id=1582254&t=w') }
    end

    factory :isShownAt do
      initialize_with { new('http://digitalcollections.nypl.org/items/510d47e3-57d2-a3d9-e040-e00a18064a99') }
    end
  end


  factory :place, class: DPLA::MAP::Place do
    label 'New York, NY'
    providedLabel 'New York City'
    lat '40.7127'
    long '74.0059'
    alt '10'
    parentFeature { ActiveTriples::Resource.new('http://sws.geonames.org/5128638/') }
    countryCode 'US'
    exactMatch { ActiveTriples::Resource.new('http://sws.geonames.org/5128581/') }
  end

  factory :agent, class: DPLA::MAP::Agent do
    label 'Norma Ford'
    providedLabel 'Norma Ford'
  end

  factory :collection, class: DPLA::MAP::Collection do
    title 'Diana Davies photographs, 1965-1978'
    description 'Photographs of Diana Davies; LGBT and HIV/AIDS Activist Collections'
  end

  factory :concept, class: DPLA::MAP::Concept do
    prefLabel 'Gay activists'
    providedLabel 'Gay Activists'
  end

  factory :timespan, class: DPLA::MAP::TimeSpan do
    providedLabel '1969.'
    self.begin Date.new(1969)
    self.end Date.new(1969, 12, 31)
  end

  factory :language, class: DPLA::MAP::Controlled::Language do
    initialize_with do
      new('eng')
    end
  end

  factory :dctype, class: DPLA::MAP::Controlled::DCMIType do
    initialize_with do
      new('Image')
    end
  end

  factory :genre, class: DPLA::MAP::Controlled::Genre do
    initialize_with do
      new('300132472')
    end
  end
end

if defined?(RSpec)
  RSpec.configure do |config|
    config.before(:suite) do
      FactoryGirl.lint
    end
  end
end
