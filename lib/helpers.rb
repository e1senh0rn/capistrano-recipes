# =========================================================================
# These are helper methods that will be available to your recipes.
# =========================================================================

# automatically sets the environment based on presence of 
# :stage (multistage gem), :rails_env, or RAILS_ENV variable; otherwise defaults to 'production'
def environment  
  if exists?(:stage)
    stage
  elsif exists?(:rails_env)
    rails_env  
  elsif(ENV['RAILS_ENV'])
    ENV['RAILS_ENV']
  else
    "production"  
  end
end

def is_using_nginx
  is_using('nginx',:web_server)
end

def is_using_passenger
  is_using('passenger',:server)
end

def is_using_unicorn
  is_using('unicorn',:server)
end

def is_using_god
  is_using('god',:monitorer)
end

def is_using(something, with_some_var)
 exists?(with_some_var.to_sym) && fetch(with_some_var.to_sym).to_s.downcase == something
end

# Path to where the generators live
def templates_path
  expanded_path_for('../generators')
end

def docs_path
  expanded_path_for('../doc')
end

def expanded_path_for(path)
  e = File.join(File.dirname(__FILE__),path)
  File.expand_path(e)
end

def parse_config(file)
  require 'erb'  #render not available in Capistrano 2
  template=File.read(file)          # read it
  return ERB.new(template).result(binding)   # parse it
end

# Generates a configuration file parsing through ERB
# Fetches local file and uploads it to remote_file
# Make sure your user has the right permissions.
def generate_config(local_file,remote_file)
  temp_file = '/tmp/' + File.basename(local_file)
  buffer    = parse_config(local_file)
  File.open(temp_file, 'w+') { |f| f << buffer }
  upload temp_file, remote_file, :via => :scp
  `rm #{temp_file}`
end 

# Execute a rake task, example:
#   run_rake log:clear
def run_rake(task)
  run "cd #{current_path} && rake #{task} RAILS_ENV=#{environment}"
end
