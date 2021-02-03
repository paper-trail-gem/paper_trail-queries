# frozen_string_literal: true

module PaperTrail
  ::RSpec.describe Queries do
    let(:model) do
      Class.new do
        extend Queries
      end
    end

    it "has a version number" do
      expect(Queries.gem_version).to be_a(Gem::Version)
    end

    describe ".creates" do
      it "calls .where" do
        allow(model).to receive(:where)
        model.creates
        expect(model).to have_received(:where).with(event: "create")
      end
    end
  end
end
