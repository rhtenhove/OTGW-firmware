FROM debian

RUN apt update

RUN apt install -y curl make build-essential python3 python3-pip

RUN pip install esptool --break-system-packages

RUN curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
