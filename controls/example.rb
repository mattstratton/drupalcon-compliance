# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

title 'Allowed Services'

# you add controls here
control 'services-1.0' do                        # A unique ID for this control
  impact 1.0                                # The criticality, if this control fails.
  title 'Telnet is not installed'             # A human-readable title
  desc 'The telnet daemon should NOT be installed. It is a bad thing.'
  describe package('telnetd') do
    it { should_not be_installed }
  end
end
