class User < ApplicationRecord
  has_many :products

  validates :name, presence: true

  before_validation { puts 'Called "before_validation"' }
  after_validation do
    puts 'Called after_validation'
    throw :abort if name == 'Bob'
  end

  before_save { puts 'Called "before_save"' }
  around_save :around_save
  after_save do
    puts 'Called after_save'
    throw :abort if name == 'Bob'
  end

  before_create { puts 'Called "before_create"' }
  around_create :around_create
  after_create do
    puts 'Called after_create'
    throw :abort if name == 'Bob'
  end

  before_update { puts 'Called "before_update"' }
  around_update :around_update
  after_update do
    puts 'Called after_update'
    throw :abort if name == 'Bob'
  end

  before_destroy { puts 'Called "before_destroy"' }
  around_destroy :around_destroy
  after_destroy do
    puts 'Called after_destroy'
    throw :abort if name == 'Bob'
  end

  after_initialize do
    puts 'Called after_initialize'
    throw :abort if name == 'Bob'
  end
  after_find do
    puts 'Called after_find'
    throw :abort if name == 'Bob'
  end
  after_touch do
    puts 'Called after_touch'
    throw :abort if name == 'Bob'
  end

  after_commit do
    puts 'Called after_commit'
    throw :abort if name == 'Bob'
  end
  after_rollback do
    puts 'Called after_rollback'
    throw :abort if name == 'Bob'
  end
  after_create_commit do
    puts 'Called after_create_commit'
    throw :abort if name == 'Bob'
  end
  after_update_commit do
    puts 'Called after_update_commit'
    throw :abort if name == 'Bob'
  end
  after_destroy_commit do
    puts 'Called after_destroy_commit'
    throw :abort if name == 'Bob'
  end

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
