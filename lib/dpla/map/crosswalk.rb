module DPLA::MAP
  module Crosswalk
    def to_3_1_json
      CrosswalkHashBuilder.build(self)
    end

    class CrosswalkHashBuilder
      attr_accessor :hash

      def initialize(parent)
        @parent = parent
        @hash = {}
      end

      class << self
        def build(parent)
          new(parent).build
        end
      end

      def build
        build_aggregation
      end

      def build_aggregation
        hash.merge({ :ingestType => 'item',
                     # @todo: FIXME! WHOA THIS IS BAD!
                     #   the legacy system increments `ingestionSequence` for
                     #   each subsequent harvest. Figure out how to do that,
                     #   or what we want to do instead.
                     :ingestionSequence => 1,
                     # :ingestDate => Date.today ??
                     #    or maybe the dc:created/modified stored by Marmotta?
                     #    for the Aggregation (probably this)? or the OriginalRecord?
                     :@context => "http://dp.la/api/items/context",
                     :aggregatedCHO => '#sourceResource',
                     :@id => make_id,
                     :id => make_id.split('/').last
                     # ideally, it would be the `local_name` of the provider
                     # + `--` + `whatever the provider id was`
                     # :_id => ^^^^^
                   })

        set_value(hash, :dataProvider, @parent.dataProvider.map(&:label), true)

        set_value(hash, :originalRecord, @parent.originalRecord, true) do |o|
          o.rdf_subject.to_s
        end

        set_value(hash, :intermediateProvider,
                  @parent.intermediateProvider,
                  true) do |ip|
          ip.label.any? ? ip.label : ip.providedLabel
        end

        hash[:sourceResource] = build_source_resource

        hash[:provider] = @parent.provider.map do |provider|
          build_provider(provider)
        end

        set_value(hash, :hasView, @parent.hasView, true) do |view|
          view.rdf_subject.to_s
        end

        set_value(hash, :isShownAt, @parent.isShownAt, true) do |view|
          view.rdf_subject.to_s
        end

        set_value(hash, :object, @parent.object, true) do |view|
          view.rdf_subject.to_s
        end

        hash
      end

      def build_source_resource
        return nil if @parent.sourceResource.empty?
        parent_sr = @parent.sourceResource.first
        sr = { :@id => parent_sr.rdf_subject.to_s }

        set_value(sr, :contributor, parent_sr.contributor) do |contrib|
          contrib.label.any? ? contrib.label : contrib.providedLabel
        end

        set_value(sr, :creator, parent_sr.creator) do |creator|
          creator.label.any? ? creator.label : creator.providedLabel
        end

        set_value(sr, :description, parent_sr.description, true)
        set_value(sr, :format, parent_sr.dcformat)
        set_value(sr, :identifier, parent_sr.identifier)

        set_value(sr, :langague, parent_sr.language) do |lang|
          lang.prefLabel.any? ? lang.prefLabel : lang.providedLabel
        end

        set_value(sr, :publisher, parent_sr.publisher) do |pub|
          pub.label.any? ? pub.label : pub.providedLabel
        end
        set_value(sr, :relation, parent_sr.relation)

        set_value(sr, :genre, parent_sr.genre) do |genre|
          genre.prefLabel.any? ? genre.prefLabel : genre.providedLabel
        end

        set_value(sr, :relation, parent_sr.relation)
        set_value(sr, :rights, parent_sr.rights, true)
        set_value(sr, :temporal, parent_sr.temporal)
        set_value(sr, :title, parent_sr.title)

        sr[:collection] = parent_sr.collection.map do |coll|
          build_collection(coll)
        end

        set_value(sr, :type, parent_sr.dctype, true) do |type|
          build_dc_type(type)
        end

        sr[:date] = parent_sr.date.map do |date|
          build_time_span(date)
        end

        sr[:place] = parent_sr.spatial.map do |place|
          build_place(place)
        end

        sr[:subject] = parent_sr.subject.map do |subj|
          build_subject(subj)
        end

        sr
      end

      def build_collection(source)
        coll = {}
        set_value(coll, :title, source.title)
        coll[:@id] = source.rdf_subject.to_s
        coll[:id] = source.rdf_subject.to_s.split('/').last

        coll
      end

      def build_time_span(source)
        date = {}
        date[:displayDate]
        set_value(date, :begin, source.begin, true, &:as_json)
        set_value(date, :end, source.end, true, &:as_json)

        date
      end

      def build_provider(source)
        provider = {}
        provider[:name] = source.label.first if source.label.any?
        provider[:name] ||= source.providedLabel.first if
          source.providedLabel.any?
        provider[:@id] = source.rdf_subject.to_s
        provider
      end

      def build_dc_type(source)
        return unless source.rdf_subject
        vocab_sym = source.rdf_subject.pname.split(':').last.to_sym
        RDF::DCMITYPE[vocab_sym].label.downcase
      end

      def build_place(source)
        place = {}
        place[:name] = source.label.first if source.label.any?
        place[:name] ||= source.providedLabel.first if source.providedLabel.any?
        place[:coordinates] = "#{source.lat}, #{source.long}" if
          source.lat.any? && source.long.any?
        {}
      end

      def build_subject(source)
        subject = {}
        subject[:name] = source.prefLabel if source.prefLabel.any?
        subject[:name] = source.providedLabel if source.providedLabel.any?
        subject
      end

      def set_value(target_hash, key, value, first = false, &block)
        value = Array(value).map(&block) if block_given?
        return if Array(value).empty?
        target_hash[key] = first ? value.first : Array(value).flatten
      end

      def make_id(uri = nil)
        uri ||= @parent.rdf_subject
        uri.to_s
      end
    end
  end
end
