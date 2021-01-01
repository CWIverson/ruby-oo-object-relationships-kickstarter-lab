class Project
    attr_reader :title
    @@all=[]
    def initialize(title)
        @title=title
        @@all<<self
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
       array = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end
        array.map do |project|
            project.backer
        end
    end
end