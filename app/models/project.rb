class Project < ActiveRecord::Base
    validates :project_description, presence: true
    validates :project_url, presence: true
    validates :project_source_url, presence: true
    validates :project_img, presence: true
    validates :project_feature_lang, presence: true
    validates :project_state, presence: true
end
