require 'spec_helper'

describe DPLA::MAP::SourceResource do

  subject { build(:source_resource) }

  it 'is a dpla:SourceResource' do
    expect(subject.type).to eq [RDF::URI('http://dp.la/about/map/SourceResource')]
  end

  it 'has an edm:hasType that is a DPLA::MAP::Controlled::Genre' do
    expect(subject.genre).to contain_exactly(an_instance_of(DPLA::MAP::Controlled::Genre))
  end

  it 'has a dc:date that is a DPLA::MAP::TimeSpan' do
    expect(subject.date).to contain_exactly(an_instance_of(DPLA::MAP::TimeSpan))
  end

  it 'has a dcterms:language that is a DPLA::MAP::Controlled::Language' do
    expect(subject.language).to contain_exactly(an_instance_of(DPLA::MAP::Controlled::Language))
  end

  it 'has a dcterms:subject that is a DPLA::MAP::Concept' do
    expect(subject.subject).to contain_exactly(an_instance_of(DPLA::MAP::Concept))
  end

  it 'has a dcterms:type that is a DPLA::MAP::Controlled::DCMIType' do
    expect(subject.dctype).to contain_exactly(an_instance_of(DPLA::MAP::Controlled::DCMIType))
  end
end

describe DPLA::MAP::Aggregation do
  subject { build(:aggregation) }

  it 'has nested values' do
    expect(subject.sourceResource.first.subject.first.prefLabel)
      .to contain_exactly('Gay activists')
    expect(subject.sourceResource.first.date.first.providedLabel)
      .to contain_exactly('1969.')
  end
  
  context 'when built from parsed graph' do
    let(:parsed) do
      lang = DPLA::MAP::Controlled::Language.new
      lang.providedLabel = label
      subject.sourceResource.first.language = lang

      uri = RDF::URI('http://example.org/moomin')
      subject.set_subject!(uri)

      agg = DPLA::MAP::Aggregation.new(uri)
      agg << RDF::Reader.for(:ttl).new(subject.dump(:ttl))
      agg
    end

    let(:label) { 'eng' }

    it 'has nested values' do
      expect(parsed.sourceResource.first.language.first.providedLabel)
        .to contain_exactly(label)
    end
  end
end
