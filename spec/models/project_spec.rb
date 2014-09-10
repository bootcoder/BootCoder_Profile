require "spec_helper"

describe Project do
  context "Validations" do
    before(:each) do
      @project = Project.new
      @project.project_description = "test project"
      @project.project_url = "www.test-project.com"
      @project.project_source_url = "www.githubz.com"
      @project.project_img = "Hunterbuttz.png"
      @project.project_feature_lang = "Ruby"
      @project.project_state = "pre-alpha"
    end
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