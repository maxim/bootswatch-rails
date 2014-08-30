#!/usr/bin/env rake
require "bundler/gem_tasks"

THEMES = %w(
  amelia
  cerulean
  cosmo
  cyborg
  darkly
  flatly
  journal
  lumen
  paper
  readable
  sandstone
  simplex
  slate
  spacelab
  superhero
  united
  yeti
).freeze


LESS_FILES = FileList["bootswatch/{#{THEMES.join(',')}}/*.less"]
SCSS_FILES = LESS_FILES.pathmap(
  'vendor/assets/stylesheets/bootswatch/%-1d/_%n.scss'
)

SCSS_FILES.zip(LESS_FILES).each do |target, source|
  directory File.dirname(target)

  file target => [File.dirname(target), source] do
    sh "./converter #{source} #{target}"
  end
end

desc 'Imprecisely convert LESS files to SCSS files'
task convert: SCSS_FILES
