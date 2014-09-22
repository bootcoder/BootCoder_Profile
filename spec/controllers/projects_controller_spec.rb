require "spec_helper"

describe "GET #create" do
  it "gives success on good params" do
    expect(response.status).to eq(200)
  end

  it "gives error on bad params" do
    pending
  end

  it "gives error on no params" do
    pending
  end
end