require "spec_helper"

describe Project do
  context "Validations" do
    it { should validate_presence_of(:project_description)}
    it { should validate_presence_of(:project_url) }
    it { should validate_presence_of(:project_source_url) }
    it { should validate_presence_of(:project_img) }
    it { should validate_presence_of(:project_feature_lang) }
    it { should validate_presence_of(:project_state) }
    it { should validate_uniqueness_of(:project_description) }
    it { should validate_uniqueness_of(:project_url) }
    it { should validate_uniqueness_of(:project_source_url) }
  end
end