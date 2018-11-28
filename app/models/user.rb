class User < ApplicationRecord
  has_many :products

  validates :name, presence: true

  before_validation { puts 'Called "before_validation"' }
  after_validation { puts 'Called "after_validation"' }

  before_save { puts 'Called "before_save"' }
  around_save :around_save
  after_save { puts 'Called "after_save"' }

  before_create { puts 'Called "before_create"' }
  around_create :around_create
  after_create { puts 'Called "after_create"' }

  before_update { puts 'Called "before_update"' }
  around_update :around_update
  after_update { puts 'Called "after_update"' }

  before_destroy { puts 'Called "before_destroy"' }
  around_destroy :around_destroy
  after_destroy { puts 'Called "after_destroy"' }

  after_initialize { puts 'Called "after_initialize"' }
  after_find { puts 'Called "after_find"' }
  after_touch { puts 'Called "after_touch"' }

  after_commit { puts 'Called "after_commit"' }
  after_rollback { puts 'Called "after_rollback"' }
  after_create_commit { puts 'Called "after_create_commit"' }
  after_update_commit { puts 'Called "after_update_commit"' }
  after_destroy_commit { puts 'Called "after_destroy_commit"' }

  private

  def around_save
    puts 'Called "around_save(before)"'
    yield
    puts 'Called "around_save(after)"'
  end

  def around_create
    puts 'Called "around_create(before)"'
    yield
    puts 'Called "around_create(after)"'
  end

  def around_update
    puts 'Called "around_update(before)"'
    yield
    puts 'Called "around_update(after)"'
  end

  def around_destroy
    puts 'Called "around_destroy(before)"'
    yield
    puts 'Called "around_destroy(after)"'
  end
end
