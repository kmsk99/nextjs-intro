FROM node:16-alpine
# 특정 버전 node 이미지를 받아옵니다.  

WORKDIR /usr/src/app
# 만들 이미지에 작업할 디렉토리로 이동합니다.  

COPY package.json .
COPY yarn.lock .

# 이미지 생성 과정에서 실행할 명령어
RUN yarn

COPY . .

EXPOSE 3000

# 컨테이너 실행시 실행할 명령어
CMD ["yarn", "dev"]

ENV CHOKIDAR_USEPOLLING=true

# 이미지 생성 명령어 (현 파일과 같은 디렉토리에서)
# docker build -t plugin .

# 컨테이너 생성 & 실행 명령어
# docker run --name plugin-con -p 8080:8080 plugin

# 모든 컨테이너 중지
# docker stop $(docker ps -aq)

# 사용되지 않는 모든 도커 요소(컨테이너, 이미지, 네트워크, 볼륨 등) 삭제
# docker system prune -a