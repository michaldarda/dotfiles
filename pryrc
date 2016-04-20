if ENV['TERM'] == 'emacs'
  Pry.config.color = false
  Pry.config.pager = false
  Pry.config.auto_indent = false
end

begin
  require 'logger'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
rescue
end

class String
  def ar_execute
    ActiveRecord::Base.connection.execute(self).each(as: :hash).to_a
  end

  def ar_explain
    ActiveRecord::Base.connection.execute("EXPLAIN #{self}").each(as: :hash).to_a
  end
end

unless ActiveRecord::Relation.instance_methods.include?(:explain)
  class ActiveRecord::Relation
    def ar_execute
      to_sql.ar_execute
    end

    def ar_explain
      to_sql.ar_explain
    end
  end
end

class Object
  def dbg
    tap{ |obj| puts ?> * 40, obj.inspect, ?< * 40 }
  end
end
