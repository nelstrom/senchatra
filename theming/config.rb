# Get the directory that this configuration file exists in
dir = File.dirname(__FILE__)

# Load the sencha-touch framework automatically.
load File.join(dir, 'sencha-1.1.0')

# Compass configurations
sass_path    = dir
css_path     = File.join(dir, "..", "public", "stylesheets")
output_style = :expanded
environment  = :development
