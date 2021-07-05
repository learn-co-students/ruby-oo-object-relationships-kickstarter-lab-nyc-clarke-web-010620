class Project

    attr_reader :title

    def initialize(title)
        @title = title
        
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        x = ProjectBacker.all.select do |projback|
            projback.project == self
        end

        x.map do |proj|
            proj.backer
        end
     end
end