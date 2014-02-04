require '../src/queue.rb'

describe Queue do
	before(:each) do
    @queue = Queue.new
  end

  it "initalizes empty" do
    @queue.length.should == 0
  end

  describe "#enqueue" do
    it"reports a size of 1 after adding an item" do
      @queue.enqueue("elephants")
      @queue.length.should == 1
    end

    it "should add multiple items" do
      @queue.enqueue("tomatoes")
      @queue.enqueue("cucumbers")
      @queue.enqueue("squash")
      @queue.length.should == 3
    end
  end

  describe "#dequeue" do 
    it "should remove items" do
      @queue.enqueue("facebook")
      @queue.enqueue("myspace")
      @queue.length.should == 2
      @queue.dequeue
      @queue.length.should == 1
    end

    it "should allow sequential addition/removal" do
      @queue.enqueue("t-mobile")
      @queue.dequeue.should == "t-mobile"
      @queue.enqueue("verizon")
      @queue.dequeue.should == "verizon"
    end
  end

  describe "#queue behavior" do
    it "removes oldest item in the queue"
      @queue.enqueue("breakfast")
      @queue.enqueue("lunch")
      @queue.dequeue.should == "breakfast"
    end
  end




