require 'administrate/field/enumerate'

describe Administrate::Field::Enumerate do
  class CategoryType < EnumerateIt::Base
    associate_values(
      first_type:  0,
      second_type: 1
    )
  end

  class Dumb
    extend EnumerateIt
    attr_accessor :category_type

    def initialize(category_type)
      @category_type = category_type
    end

    has_enumeration_for :category_type, with: CategoryType
  end

  let(:page) { :show }
  let(:data) { double(:data) }
  let(:resource) { Dumb.new(1) }

  let(:field) do
    described_class.new(
      :category_type,
      data,
      page,
      resource: resource
    )
  end

  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      path = field.to_partial_path

      expect(path).to eq("/fields/enumerate/#{page}")
    end
  end

  describe '#choices' do
    it 'returns a list containing the humanized name and the value for the enum' do
      expect(field.choices).to eq([["First Type", 0], ["Second Type", 1]])
    end
  end

  describe '#to_s' do
    it 'returns a list containing the humanized name and the value for the enum' do
      expect(field.to_s).to eq('Second Type')
    end
  end
end
