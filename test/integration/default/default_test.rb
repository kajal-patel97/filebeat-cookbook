# InSpec test for recipe filebeat::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80) do #, :skip do
  it { should_not be_listening }
end

describe package ('filebeat') do
  it { should be_installed }
end

describe service 'filebeat' do
  it { should be_running }
  it {should be_enabled}
end
