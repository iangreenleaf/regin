require 'test_helper'

describe Reginald::Character do
  context "with value 'a'" do
    before do
      @character = Reginald::Character.new('a')
    end

    it "should have no quantifier" do
      @character.quantifier.should be_nil
    end

    it { @character.should be_literal }

    it "should return a string expression of itself" do
      @character.to_s.should == "a"
    end

    it "should return a regexp of itself" do
      @character.to_regexp.should == /\Aa\Z/
    end

    it "should be inspectable" do
      @character.inspect.should == '#<Character "a">'
    end

    it { @character.should match('a') }
    it { @character.should_not match('b') }

    it { @character.should include('a') }
    it { @character.should_not include('b') }
    it { @character.should_not include('') }

    it "should == another string character" do
      @character.should == 'a'
    end

    it "should == another 'a' character" do
      @character.should == Reginald::Character.new('a')
    end

    it "should eql another 'a' character" do
      @character.should eql(Reginald::Character.new('a'))
    end

    it "should not == another 'a' character if the quantifier is different" do
      other_char = Reginald::Character.new('a')
      other_char.quantifier = '?'
      @character.should_not == other_char
    end

    it "should not eql another 'a' character if the quantifier is different" do
      other_char = Reginald::Character.new('a')
      other_char.quantifier = '?'
      @character.should_not eql(other_char)
    end
  end

  context "with value 'a' and optional quantifier" do
    before do
      @character = Reginald::Character.new('a')
      @character.quantifier = '?'
    end

    it "should have optional quantifier" do
      @character.quantifier.should == '?'
    end

    it { @character.should_not be_literal }

    it "should return a string expression of itself" do
      @character.to_s.should == 'a?'
    end

    it "should return a regexp of itself" do
      @character.to_regexp.should == /\Aa?\Z/
    end

    it "should be inspectable" do
      @character.inspect.should == '#<Character "a?">'
    end

    it { @character.should match('a') }
    it { @character.should_not match('b') }
    it { @character.should match('') }

    it { @character.should include('a') }
    it { @character.should_not include('b') }
    it { @character.should_not include('') }

    it "should == another string character" do
      @character.should == 'a?'
    end

    it "should == another 'a' character" do
      other_char = Reginald::Character.new('a')
      other_char.quantifier = '?'
      @character.should == other_char
    end

    it "should == another 'a' character if the quantifier is different" do
      @character.should_not == Reginald::Character.new('a')
    end
  end

  context "with value 'a' and repeator quantifier" do
    before do
      @character = Reginald::Character.new('a')

      # TODO: Repeator should be constructed from an integer
      # Range not a string. We should do the parsing
      # in the actual parser, not here.
      @character.quantifier = '{2,3}'
    end

    it "should have repeator quantifier" do
      @character.quantifier.should == '{2,3}'
    end

    it { @character.should_not be_literal }

    it "should return a string expression of itself" do
      @character.to_s.should == 'a{2,3}'
    end

    it "should return a regexp of itself" do
      @character.to_regexp.should == /\Aa{2,3}\Z/
    end

    it "should be inspectable" do
      @character.inspect.should == '#<Character "a{2,3}">'
    end

    it { @character.should match('aa') }
    it { @character.should match('aaa') }
    it { @character.should_not match('a') }
    it { @character.should_not match('aaaa') }
    it { @character.should_not match('') }

    it { @character.should include('a') }
    it { @character.should_not include('b') }
  end

  context "with value 'a' and ignorecase" do
    before do
      @character = Reginald::Character.new('a')
      @character.ignorecase = true
    end

    it "should have no quantifier" do
      @character.quantifier.should be_nil
    end

    it { @character.should_not be_literal }

    it "should return a string expression of itself" do
      @character.to_s.should == "(?i-mx:a)"
    end

    it "should return a regexp of itself" do
      @character.to_regexp.should == /\Aa\Z/i
    end

    it "should be inspectable" do
      @character.inspect.should == '#<Character "(?i-mx:a)">'
    end

    it { @character.should match('a') }
    it { @character.should match('A') }
    it { @character.should_not match('b') }

    it { @character.should include('a') }
    it { @character.should include('A') }
    it { @character.should_not include('b') }
    it { @character.should_not include('') }
  end

  context "that is frozen" do
    before do
      @character = Reginald::Character.new('a')
      @character.quantifier = '?'
      @character.freeze
    end

    it { @character.should be_frozen }

    it "value should be frozen" do
      @character.value.should be_frozen
    end

    it "quantifier should be frozen" do
      @character.quantifier.should be_frozen
    end
  end
end
