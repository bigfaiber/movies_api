# README

Get the JWT token from Authorization header:
curl -i -X POST -d "user[email]"="admin@example.com" -d "user[password]"="12345678" http://localhost:3000/login

Test with JWT token (first do sign-in and then copy the token):
curl --header "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEsInNjcCI6InVzZXIiLCJpYXQiOjE0OTEzOTMzNjYsImV4cCI6MTQ5MTM5Njk2NiwianRpIjoiNDU5MzQ5ZjEtZTM2Ny00MmQ2LWI5NzEtYTAwM2FlMmQ0MGRlIn0.QqxdyenDVoAu4z47481fhuNpVJbxYPTxWyy_DG_BEts" http://localhost:3000/top100

curl --header "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEsInNjcCI6InVzZXIiLCJpYXQiOjE0OTEzOTY2MzksImV4cCI6MTQ5MTQwMDIzOSwianRpIjoiOTk0Yjg3NjgtYzU2Zi00ODQ3LWEwYTItZjc1NGM3ZWQ0NzE2In0.e9X8tK0PJmINJB892GJZkTp4tIv9gDU7ZuyU4TTNlyw" http://localhost:3000/api/v1/movies