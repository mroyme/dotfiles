# Use neovim as default vim
alias vim=nvim

# RabbitMQ 3.5.7 binaries (for Pay.Pw)
alias _pay-rabbitmq-defaults=/opt/rabbitmq_server-3.5.7/sbin/rabbitmq-defaults
alias _pay-rabbitmq-env=/opt/rabbitmq_server-3.5.7/sbin/rabbitmq-env
alias _pay-rabbitmq-plugins=/opt/rabbitmq_server-3.5.7/sbin/rabbitmq-plugins
alias _pay-rabbitmq-server=/opt/rabbitmq_server-3.5.7/sbin/rabbitmq-server
alias _pay-rabbitmqctl=/opt/rabbitmq_server-3.5.7/sbin/rabbitmqctl
alias payrmq-start='_pay-rabbitmq-server -detached'
alias payrmq-stop='_pay-rabbitmqctl stop'

# Pay.Pw controls
alias payservice-stop='cd /Users/madhurjya.r/development/pay.pw-pg && rvm use 2.4.1@service && rake service:stop'
alias payservice-start='payservice-stop && rake service:start'
alias payweb-stop='cd /Users/madhurjya.r/development/pay.pw-pg && rvm use 2.4.1@web && rake web:stop'
alias payweb-start='payweb-stop && rake web:start'
