# Set the default environment to "development" if not already set
ENV["RACK_ENV"] ||= "development"

# Load dependencies using Bundler
require 'bundler/setup'
require 'faker'
Bundler.require(:default, ENV["RACK_ENV"])

# Require the necessary model files
require_relative '../App/models/product'   # Assuming the correct file paths
require_relative '../App/models/review'
require_relative '../App/models/user'