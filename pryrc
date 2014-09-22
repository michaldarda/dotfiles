Pry.config.should_load_plugins = false

Pry.prompt = [proc { |obj, nest_level| "(#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "(#{obj}):#{nest_level} * " }]

Pry.config.editor = "vim"
