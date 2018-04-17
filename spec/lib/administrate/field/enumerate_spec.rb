require 'administrate/field/enumerate'

describe Administrate::Field::Enumerate do
  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      page = :show
      field = described_class.new(:status, 'status', page)

      path = field.to_partial_path

      expect(path).to eq("/fields/enumerate/#{page}")
    end
  end
end
