_build/default/rel/vernemq/bin/vernemq stop
rm -Rf _build
sudo make rel
sudo chown -R yo _build
_build/default/rel/vernemq/bin/vernemq start 
_build/default/rel/vernemq/bin/vmq-admin plugin enable --name=elixir --path=/opt/homebrew/opt/elixir
_build/default/rel/vernemq/bin/vmq-admin plugin enable --name=vmq_custom_auth --path=/Users/yo/Documents/DIGIEYE/Platform/DPEP-MQTT-KAFKA/workspace/vmq_custom_auth/_build/dev
_build/default/rel/vernemq/bin/vmq-admin plugin enable --name=vmq_kafka_ex --path=/Users/yo/Documents/DIGIEYE/Platform/DPEP-MQTT-KAFKA/workspace/vmq_kafka_ex/_build/dev