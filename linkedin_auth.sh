
curl -ik -X POST https://www.linkedin.com/oauth/v2/accessToken \
-d grant_type=authorization_code \
-d code=YOUR_AUTH_CODE \
-d redirect_uri=https%3A%2F%2Fapi-university.com \
-d client_id=YOUR_CLIENT_ID \
-d client_secret=YOUR_CLIENT_SECRET


curl https://api.linkedin.com/v2/me \
-H "Authorization: Bearer YOUR_ACCESS_TOKEN"

