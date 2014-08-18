FactoryGirl.define do

  factory :source_resource, aliases: [:aggregatedSourceResource], class: DPLA::SourceResource do
    title 'Stonewall Inn [2]'
    creator 'Davies, Diana (1938-)'
    subject ['Lesbians', 'Gay activists']
    description 'Window of the Stonewall Bar N.Y. 1969. The other half of the graffiti was erased by the time Diana photographed it.'
    dcmitype DPLA::Controlled::DCMIType.new('Image').to_term
  end

  factory :aggregation, class: DPLA::Aggregation do
    aggregatedSourceResource :resource
    provider :provider
  end

  factory :agent, aliases: [:provider], class: DPLA::Agent do
    name 'The New York Public Library'
  end

end

RSpec.configure do |config|
  config.before(:suite) do
    FactoryGirl.lint
  end
end
