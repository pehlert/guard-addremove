require 'guard'
require 'guard/guard'
require 'guard/watcher'

module Guard
  class Addremove < Guard

    VERSION = '1.0.0'

    # Calls #run_all if the :all_on_start option is present.
    def start
      run_all if options[:all_on_start]
    end

    # Call #run_on_additions for all files which match this guard.
    def run_all
      run_on_additions(Watcher.match_files(self, Dir.glob('{,**/}*{,.*}').uniq))
    end

    def run_on_additions(res)
      puts res if res
    end
    alias_method :run_on_removals, :run_on_additions
  end

  class Dsl
    # Taken from guard-shell. Easy method to display a notification
    def n(msg, title='', image=nil)
      Notifier.notify(msg, :title => title, :image => image)
    end
  end
end
