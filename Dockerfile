FROM circleci/clojure:openjdk-11-lein-2.9.3-node-browsers

RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.462.sh && \
  chmod +x linux-install-1.10.1.462.sh && \
  sudo ./linux-install-1.10.1.462.sh && \
  rm -rf linux-install-1.10.1.462.sh && \
  sudo apt autoremove -y && \
  sudo apt clean && \
  sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
