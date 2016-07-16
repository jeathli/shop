require "web_helper"

RSpec.describe "GET/", type: :request do
  before do
    do_request
  end

  it "returns 200 HTTP code" do
    expect(last_response.status).to eql(200)
  end

    private
  def do_request
    get "/"
  end
end