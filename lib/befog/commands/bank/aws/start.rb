require "yaml"
require "befog/commands/mixins/help"
require "befog/commands/mixins/configurable"
require "befog/commands/mixins/bank"
require "befog/commands/mixins/aws"
require "befog/commands/mixins/server"
require "mixlib/cli"

module Befog
  module Commands
    
    module Bank
      
      module AWS
      
        class Start
      
          include Mixlib::CLI
          include Mixins::Help
          include Mixins::Configurable
          include Mixins::Bank
          include Mixins::AWS
          include Mixins::Server

          command "befog bank aws start",
            :default_to_help => true


          def run_for_server(id)
          end

        end
      end
    end
  end
end