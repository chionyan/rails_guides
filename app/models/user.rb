class User < ApplicationRecord
  validates :name, presence: true

  before_validation { puts 'Called "before_validation"' }
  after_validation { puts 'Called "after_validation"' }

  before_save { puts 'Called "before_save"' }
  after_save { puts 'Called "after_save"' }

  before_create { puts 'Called "before_create"' }
  after_create { puts 'Called "after_create"' }

  before_update { puts 'Called "before_update"' }
  after_update { puts 'Called "after_update"' }

  before_destroy { puts 'Called "before_destroy"' }
  after_destroy { puts 'Called "after_destroy"' }

  after_initialize { puts 'Called "after_initialize"' }
  after_find { puts 'Called "after_find"' }
  after_touch { puts 'Called "after_touch"' }

  after_commit { puts 'Called "after_commit"' }
  after_rollback { puts 'Called "after_rollback"' }
  after_create_commit { puts 'Called "after_create_commit"' }
  after_update_commit { puts 'Called "after_update_commit"' }
  after_destroy_commit { puts 'Called "after_destroy_commit"' }

  # around_save { puts 'Called "around_save"' }
  # around_create { puts 'Called "around_create"' }
  # around_update { puts 'Called "around_update"' }
  # around_destroy { puts 'Called "around_destroy"' }
end
