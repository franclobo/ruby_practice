=begin
  the greeter greets people entering a hotel. The boss should greeted with "Hello, #{name]", while
  everyone else shpuld be greeted with "Wellcome, #{name}". If multiple people enter, only the person who entered
  last should be greeted. If no one has entered since the last greeting, a call to greet, should return nil.

  For example, the following code should display "Wellcome, John":

  g = Greeter.new('Chuck')
  g.enters('John')
  putsg.greet

  Implement the greeter

=end

class Greeter
  def initialize(boss_name)
    @boss_name = boss_name
    @last_person = nil
  end

  def enters(name)
    @last_person = name
  end

  def greet
    return nil if @last_person.nil?

    if @last_person == @boss_name
      "Hello, #{@last_person}"
    else
      "Wellcome, #{@last_person}"
    end
  end
end


#TESTS
#SAMPLE CASE
#BOSS ENTER LAST
#GUEST ETERS LASTS
#CONSECUTIVE GREETINGS

=begin
An application requires different date formatsto be converted into one common date format.
Implement the function tranform_date_format which accepts a list
of dates as strings, and returns a new list of strings representing the dates in in the format of YYYYMMDD.
All incomeng dates will be valid dates, but only those in one of the following formats: YYYY/MM/DD,
DD/MM/YYYY, and MM/DD/YYYY should be included in the returned list where YYYY, MM, and DD are numbers representing year,
month, and day, respectively.
For example transform_date_format(['2010/02/20', '19/12/2016', '11-18-2012', '20130720']) should return
the list['20100220','20161219', '20061219', '20121118'].
=end

#def transform_date_format(dates)
#  return []
#  dates.each do |date|
#    if date =~ /^(\d{4}\/(\d{2})\/(\/d{2}))$/ # YYYY/MM/DD
#      year, month, day = $1, $2, $3
#      result << "#{year}#{month}#{day}"
#    elsif date =~ /^(\d{2}\/(\d{2})\/(\/d{4}))$/ # DD/MM/YYYY
#      year, month, day = $1, $2, $3
#      result << "#{year}#{month}#{day}"
#    elsif date =~ /^(\d{2}-(\d{2})-(\/d{4}))$/ # MM-DD-YYYY
#      year, month, day = $1, $2, $3
#      result << "#{year}#{month}#{day}"
#    end
#  end
#  return result
#end

def transform_date_format(dates)
  result = []
  dates.each do |date|
    # Check if date matches any of the valid formats
    if date =~ /^(\d{4})\/(\d{2})\/(\d{2})$/ # YYYY/MM/DD
      year, month, day = $1, $2, $3
      result << "#{year}#{month}#{day}"
    elsif date =~ /^(\d{2})\/(\d{2})\/(\d{4})$/ # DD/MM/YYYY
      year, month, day = $3, $2, $1
      result << "#{year}#{month}#{day}"
    elsif date =~ /^(\d{2})-(\d{2})-(\d{4})$/ # MM-DD-YYYY
      year, month, day = $3, $1, $2
      result << "#{year}#{month}#{day}"
    end
  end
  return result
end
p transform_date_format(["2010/02/20", "19/12/2016", "11-18-2012", "20130720"])
