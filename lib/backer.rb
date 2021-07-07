require 'pry'
class Backer 
    attr_reader :name, :backed_projects
    def initialize(name)
        @name = name 
        @backed_projects = []
    end 

    def back_project(project)
        pb = ProjectBacker.new(project, self)
        @backed_projects << pb.project 
    end 

    
        # ProjectBacker.all.each do |project_backer|
        #     if project_backer.backer == self 
        #         @backed_projects << project_backer.project
        #     end 
        # end 
        # x = ProjectBacker.all.select{|pb| pb.backer == self}
        # binding.pry 

    
end 