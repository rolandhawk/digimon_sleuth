module DigimonSleuth
  class PathSearcher

    def self.execute(line)
      args = line.split(" -- ")
      from, to = args.shift.gsub(/\s((to)|(To)|(tO))\s/, " TO ").split(" TO ")
      opts = {}

      args.each do |option|
        opt, value = option.split(" ", 2)
        case opt.upcase
        when "DEPTH"
          opts[:max_depth] = value.to_i
        when "ALL"
          opts[:all] = true
        end
      end

      new(from, to, opts).call
    end

    def initialize(from, to, opts = {})
      @from = Digimon.find(from)
      @to = Digimon.find(to)

      @mark = { from => true }
      @max_depth = opts[:max_depth]
      @allowed = opts[:allowed] || []
      @ban = opts[:ban] || []
      @all = opts[:all]
    end

    def call
      result = []
      depth = 1
      queue = [[@from, @from.name]]
      next_queue = []

      while (value = queue.shift)
        current, path = value

        if current == to
          result << path
        else
          mark[current.name] = true
        end

        traverse(next_queue, current.digivolve, path)
        traverse(next_queue, current.dedigivolve, path)

        unless queue.last
          queue = next_queue
          next_queue = []
          depth += 1

          return result if too_depth?(depth) || finish?(result)
        end
      end

      return result
    end

    private

    attr_reader :from, :to, :mark, :max_depth, :allowed, :ban, :all

    def add(queue, digimon, path = "")
      queue << [digimon, "#{path} -> #{digimon.name}"]
    end

    def allowed?(digimon)
      !mark[digimon.name] && (allowed.empty? || allowed.include?(digimon.klass.downcase)) && (ban.empty? || !ban.include?(digimon.klass.downcase))
    end

    def too_depth?(depth)
      max_depth && depth >= max_depth
    end

    def finish?(result)
      !result.empty? && !all
    end

    def traverse(queue, options, path)
      options.each do |option|
        add(queue, option, path) if allowed?(option)
      end
    end
  end
end
