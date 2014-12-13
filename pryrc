Pry.config.should_load_plugins = false

Pry.config.color = true
Pry.prompt = [proc { |obj, nest_level| "(#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "(#{obj}):#{nest_level} * " }]

Pry.config.editor = "vim"

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'
