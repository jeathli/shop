require "web_helper"

RSpec.describe "GET/" do
  xit "returns 200 HTTP code" do
    expect(last_response.status).to eql(200)
  end
end