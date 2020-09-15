FROM circleci/clojure:openjdk-11-lein-2.9.3-node-browsers

RUN   sudo apt update \
   && sudo apt install -y clojure \
   && sudo apt autoremove -y \
   && sudo apt clean \
   && sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
