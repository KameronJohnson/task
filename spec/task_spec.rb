require('rspec')
require('task')

describe(Task) do
  describe("#description") do
    it("add description of new task") do
      test_task = Task.new("scrubs the zebra")
      expect(test_task.description()).to(eq("scrubs the zebra"))
    end
  end
end
