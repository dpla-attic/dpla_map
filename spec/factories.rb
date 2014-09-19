FactoryGirl.define do

  factory :source_resource, class: DPLA::SourceResource do
    collection { |collection| collection.association :collection, :strategy => :build }
    contributor 'Norma Ford'
    title 'Stonewall Inn [2]'
    creator 'Davies, Diana (1938-)'
    subject ['Lesbians', 'Gay activists']
    description 'Window of the Stonewall Bar N.Y. 1969. The other half of the graffiti was erased by the time Diana photographed it.'
    extent '10x12 cm'
    format 'Silver Gelatin Print'
    identifier '510d47e3-57d2-a3d9-e040-e00a18064a99'
    language { |language| language.association :language, :strategy => :build }
    place { |place| place.association :place, :strategy => :build }
    publisher 'Penguin Books'
    relation ['Stonewall Inn [1]', 'Stonewall Inn [3]']
    rights "The New York Public Library is interested in learning more about items you've seen on our websites or elsewhere online. If you have any more information about an item or its copyright status, we want to hear from you. Please contact DigitalCollections@nypl.org with your contact information and a link to the relevant content."
    genre { |genre| genre.association :genre, :strategy => :build }
    temporalCoverage '1969'
    dctype { |type| type.association :dctype, :strategy => :build }
  end

  factory :aggregation, class: DPLA::Aggregation do
    aggregatedSourceResource { |sr| sr.association :source_resource, :strategy => :build }
    dataProvider 'Manuscripts and Archives Division. The New York Public Library'
    originalRecord '<record><title>Stonewall Inn [2]</title></record>'
    hasView { |wr| wr.association :web_resource, :strategy => :build }
    intermediateProvider 'NYPL'
    isShownAt 'http://digitalcollections.nypl.org/items/510d47e3-57d2-a3d9-e040-e00a18064a99'
    object 'http://dp.la/item/116d5aaf3d77a5d7c5a6c7a3e10c5afe'
    provider { 
      prov = ActiveTriples::Resource.new('http://dp.la/api/contributor/nypl')
      prov << RDF::Statement(prov, RDF::SKOS.prefLabel, "The New York Public Library")
      prov
    }
    rightsStatement { ActiveTriples::Resource.new('http://creativecommons.org/publicdomain/mark/1.0/') }
  end

  factory :web_resource, class: DPLA::WebResource do
    format 'image/tiff'
    rights 'Public Domain'
    rightsStatement { ActiveTriples::Resource.new('http://creativecommons.org/publicdomain/mark/1.0/') }
  end

  factory :place, class: DPLA::Place do
    name 'New York, NY'
    # city 'New York'
    # county 'New York County'
    # coordinates '40.7127, 74.0059'
  end

  factory :collection, class: DPLA::Collection do
    title 'Diana Davies photographs, 1965-1978'
    description 'Photographs of Diana Davies; LGBT and HIV/AIDS Activist Collections'
  end

  factory :language, class: DPLA::Controlled::Language do    
    initialize_with do
      new('eng')
    end
  end

  factory :dctype, class: DPLA::Controlled::DCMIType do    
    initialize_with do
      new('Image')
    end
  end

  factory :genre, class: DPLA::Controlled::Genre do    
    initialize_with do
      new('300132472')
    end
  end
end

RSpec.configure do |config|
  config.before(:suite) do
    FactoryGirl.lint
  end
end
