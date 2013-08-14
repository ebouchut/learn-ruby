require_relative "shared/collect_concat"

describe "Enumerable#flat_map" do
    it_behaves_like "Enumerable#collect_concat"
end