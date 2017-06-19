#!/usr/bin/ruby

# By Michael Limberger

# This script was designed to fix a particular issue 
# Display Suite d8 v2.x --> v3.x

path = nil

DATA.each do |line|

	line.chomp!
	
	path = line =~ %r{^PATH} ? line.split(':')[1] : '/var/www/drupal/8'
	next if line =~ %r{^PATH} || line =~ /^\#/
	
	cmd = %Q{cd #{path} && #{line}}
	puts %Q{EXECUTING: #{cmd}}
	system cmd

	# Ignore this for now
	# if (line =~ /^drush\ up/)
	#	puts %Q{Update Complete. Press Enter To Return...}
	#	STDIN.gets
	# end
end

__END__
PATH:/var/www/drupal/8
drush cr
drush updb -y
drush entup -y
drush up -y && drush cr
drush pmu ds -y
drush pmu layout_plugin -y
drush cr
drush dl ds-8.x-3.1 -y
drush en ds -y 
drush dl radix_layouts-8.x-4.0 -y
drush en radix_layouts -y
drush updb -y
drush entup -y
drush cr
