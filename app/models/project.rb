class Project < ApplicationRecord
    validates :project_description, presence: true, uniqueness: true
    validates :project_url, presence: true
    validates :project_source_url, presence: true
    validates :project_img, presence: true, uniqueness: true
    validates :project_feature_lang, presence: true
    validates :project_state, presence: true

    has_many :project_techs
    has_many :techs, through: :project_techs
end
