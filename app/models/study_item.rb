class StudyItem < ApplicationRecord
    belongs_to :category
    validates :title, presence: true

    def full_title
        "#{title} - #{category.title}"
    end

    def status!
        update(status: true)
    end
end
