##### NORMAL BUILD #################################
# FROM ubuntu:latest 
# RUN apt-get update && \
#     apt-get install -y python3 python3-pip
# WORKDIR /app 
# COPY . /app/ 
# RUN pip install -r requirements.txt  
# ENTRYPOINT [ "python", "app.py" ]


##### MULTI STAGE BUILD #################################
FROM ubuntu:latest AS stage1 
RUN apt-get update && \
    apt-get install -y python3 python3-pip
WORKDIR /app 
COPY . /app/ 
RUN pip install -r requirements.txt  

FROM gcr.io/distroless/python3
COPY --from=stage1 ./app . 
ENTRYPOINT [ "python", "app.py" ]