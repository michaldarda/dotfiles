#!/usr/bin/env ruby
# encoding: utf-8

ROOT_DIR = '/home/michal/Code'
HOOKS_DIR = '/home/michal/dotfiles/git_template/hooks'

def git_project?(dir)
  File.directory?("#{dir}/.git")
end

def find_full_paths_to_all_git_projects(rootdir)
  Dir.foreach(rootdir).map { |subdir|
    subdir_full_path = File.join(rootdir, subdir)

    if subdir == '.' || subdir == '..' ||
        !File.directory?(subdir_full_path)
      next
    end

    if git_project?(subdir_full_path)
      subdir_full_path
    else
      find_full_paths_to_all_git_projects(subdir_full_path)
    end
  }.flatten.compact
end

def copy_git_hooks_to_all_git_projects(rootdir)
  find_full_paths_to_all_git_projects(rootdir).each do |path|
    puts %x{ cp -r #{HOOKS_DIR}  #{path}/.git }
  end
end

def run_command_in_every_git_project(rootdir, command)
  find_full_paths_to_all_git_projects(rootdir).each do |path|
    puts %x{ cd #{path} && #{command} }
  end
end

p copy_git_hooks_to_all_git_projects(ROOT_DIR)
p run_command_in_every_git_project(ROOT_DIR, "git ctags")
