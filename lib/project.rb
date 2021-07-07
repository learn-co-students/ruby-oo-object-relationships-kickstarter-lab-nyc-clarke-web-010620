class Project
    def initialize(title)
        @title = title
    end

    attr_accessor :title

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def projectbackers
        ProjectBacker.all.select do |projback|
            projback.project == self
        end
    end

    def backers
        self.projectbackers.map do |projback|
            projback.backer
        end
    end

end
