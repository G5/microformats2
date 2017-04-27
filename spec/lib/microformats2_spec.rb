require "spec_helper"
require "microformats2"

describe Microformats2 do
  before do
    @html = <<-HTML.strip
      <div class="h-card"><p class="p-name">Jessica Lynn Suttles</p></div>
    HTML
  end

  describe "::parse" do
    it "returns ParserResults" do
      Microformats2.parse(@html).should be_kind_of Microformats2::ParserResults
    end
  end

  describe "::read_html" do
    it "can be a string of html" do
      Microformats2.read_html(@html).should include @html
    end
    it "can be a file path to html" do
      html = "spec/support/lib/microformats2/simple.html"
      Microformats2.read_html(html).should include "<div class=\"h-card\">"
    end
    it "can be a url to html" do
      stub_request(:get, "http://google.com/").
               with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
               to_return(:status => 200, :body => "google", :headers => {})
      html = "http://google.com"
      Microformats2.read_html(html).should include "google"
    end
  end
end
