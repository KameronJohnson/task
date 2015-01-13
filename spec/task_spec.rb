require('rspec')
require('task')

describe(Task) do
  before() do
    Task.clear()
  end

  describe("#description") do
    it("add description of new task") do
      test_task = Task.new("scrubs the zebra")
      expect(test_task.description()).to(eq("scrubs the zebra"))
    end
  end

  describe(".all") do
    it("returns empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a task to the to do list") do
      test_task = Task.new("feed the lion")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("empty out all of saved tasks") do
      Task.new("feed the lion").save()
      expect(Task.clear()).to(eq([]))
    end
  end
end
