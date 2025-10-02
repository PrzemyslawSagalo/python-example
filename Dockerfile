FROM python:3.12

RUN apt update -y && apt -y install python3-pip

CMD ["/bin/bash"]
