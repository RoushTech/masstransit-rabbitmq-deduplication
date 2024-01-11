FROM masstransit/rabbitmq:3.12.7

RUN curl -L https://github.com/noxdafox/rabbitmq-message-deduplication/releases/download/0.6.1/rabbitmq_message_deduplication-0.6.1.ez > $RABBITMQ_HOME/plugins/rabbitmq_message_deduplication-0.6.1.ez ; \
    curl -L https://github.com/noxdafox/rabbitmq-message-deduplication/releases/download/0.6.1/elixir-1.13.4.ez > $RABBITMQ_HOME/plugins/elixir-1.13.4.ez ; \
    rabbitmq-plugins enable rabbitmq_message_deduplication
