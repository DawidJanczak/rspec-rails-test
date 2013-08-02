require "spec_helper"

describe "hotels/_form.html.erb" do
  let(:city) { stub_model(City) }

  before do
    f = nil
    form_for(city) { |form| f = form }
    allow(view).to receive(:f).and_return(f)

    render
    @doc = Nokogiri::HTML(rendered)
  end

  it "foos" do
    expect(@doc.css("h5").size).to eq(1)
  end
end
