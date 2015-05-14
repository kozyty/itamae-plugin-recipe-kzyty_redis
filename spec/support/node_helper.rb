require 'pathname'
require 'yaml'

module NodeHelper
  def node
    path = Pathname.new(__FILE__).join('../node.yml').to_s
    YAML.load(File.open(path, 'r').read)
  end
end
