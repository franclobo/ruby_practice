require_relative '../test1'

describe Greeter do
  before (:each) do
    @g = Greeter.new('Chuck')
  end

  it "The boss should greeted with 'Hello, #{name}'" do
    @g.enters('Chuck')
    expect(@g.greet).to eq('Hello, Chuck')
  end

  it "everyone else should be greeted with 'Wellcome, #{name}'" do
    @g.enters('Jhon')
    expect(@g.greet).to eq('Wellcome, Jhon')
  end

  it "If multiple people enter, only the person who entered last should be greeted" do
    @g.enters('Jhon')
    @g.enters('Chuck')
    expect(@g.greet).to eq('Hello, Chuck')
  end

  it "If no one has entered since the last greeting, a call to greet, should return nil" do
    expect(@g.greet).to eq(nil)
  end
end

describe 'transform_date_format' do
  it "should return the list['20100220','20161219', '20061219']" do
    expect(transform_date_format(['2010/02/20', '19/12/2016', '11-18-2012'])).to eq(['20100220','20161219', '20121118'])
  end
end
