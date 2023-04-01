# django app 생성
django-admin startproject myproject  


# 도커 장고 앱 이미지 생성
docker build -t myproject .   

# 8089 외부포트로 도커 컨네이터의 8000 포트에 연결하여 외부에서 localhost:8089로 접속가능 하도록 설정
docker run -it --rm -p 8089:8000 myproject

