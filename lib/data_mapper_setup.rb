require 'data_mapper'
require 'dm-validations'
require 'dm-migrations'
require 'dm-constraints'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/lab_week_#{env}")

require './lib/models/user'
require './lib/models/task'
require './lib/models/tag'

DataMapper.finalize

DataMapper.auto_upgrade!
