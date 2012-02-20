
describe "Split_Lines(str)" do
  
  it "splits lines on \\n" do
    Split_Lines("test\ntest").should == %w{ test test }
  end

  it "splits lines on \\r\\n" do
    Split_Lines("test\r\ntest").should == %w{ test test }
  end
  
  it "strips the string before splitting" do
    Split_Lines( %! test \n test \n test ! ).should == [ 'test ', ' test ', ' test']
  end
  
  it "strips the string no matter how many new lines: \\n\\n\\n" do
    Split_Lines( %! test \n\n\n test ! ).should == [ 'test ', ' test' ]
  end

  it "ignores all whitespace inside new lines: \\n \\t \\n" do
    Split_Lines(%! test \n\n  \t \r test \r\n test !).should == ['test ', ' test ', ' test']
  end
  
  it "splits lies on \\r" do
    Split_Lines(%! test\rtest !).should == %w{ test test }
  end
  
  it "does not split on \\t" do
    Split_Lines(%! test \t test !).should == ["test \t test"]
  end
  
  it "splits on \\r\\t " do
    Split_Lines(%! test \r\t test !).should == ['test ', "\t test"]
  end

end # === Split_Lines(str)

