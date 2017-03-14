class SomeClass
  belongs_to :tree, class_name: Plant
  has_many :apples, dependent: :destroy
  has_many :seeds, through: :apples
  has_many :watermelons, dependent: :restrict_with_exception

  validates :name, presence: true, uniqueness: true
end
