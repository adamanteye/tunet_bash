complete -c tunet_bash -s c -l config -d 'Specify username and password for account in use'
complete -c tunet_bash -s i -l login -d 'Make login request'
complete -c tunet_bash -s o -l logout -d 'Make logout request'
complete -c tunet_bash -s w -l whoami -d 'Make a status query of account currently online'
complete -c tunet_bash -s v -l verbose -d 'When used with whoami query, provides detailed account statistics'
complete -c tunet_bash -l pass -d 'When used with config, set pass-name instead of password' -r --no-files
complete -c tunet_bash -s a -l auth -d 'Auth method' --no-files -ra '4 6 auto'
complete -c tunet_bash -l date-format --no-files -rd 'Format String passed to date command'
complete -c tunet_bash -l version -d 'Print version'
