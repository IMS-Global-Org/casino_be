# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# NOTE: use the individual rake files in the `lib/tasks` folder
#   to load sets of rake tasks to be loaded into the database.
#   Ensure that tasks are properly `namespaced` then execute.
#
# Examples
#   - Rake::Task["test"].invoke
#   - Rake::Task["test"].execute
#   - Rake::FileList['*.json']

Rake::Task['decks:all'].invoke
Rake::Task['clients:all'].invoke
Rake::Task['addresses:all'].invoke
Rake::Task['games:all'].invoke
