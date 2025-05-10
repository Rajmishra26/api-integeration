# LinkedIn API Integration Attempt

## 📌 Objective

To integrate LinkedIn OAuth 2.0 using `curl` for generating an access token and accessing LinkedIn’s protected resources such as user profile (`/v2/me`) and posting capabilities via `w_member_social` scope.

---

## 🛠️ Tools Used

- Git Bash (Windows)
- cURL
- LinkedIn Developer Console
- OpenID Connect Scopes

---

## ✅ OAuth 2.0 Flow Summary

### 1. LinkedIn App Setup

- Created an app via [LinkedIn Developer Portal](https://www.linkedin.com/developers/)
- Set the OAuth 2.0 redirect URI:  
  `https://api-university.com`
- App configured to use OpenID Connect scopes

---

### 2. Authorization URL

Generated and visited this URL in browser to get the `authorization_code`:

**Scopes selected:**
- `openid`
- `profile` (includes name and photo; maps to `r_liteprofile`)
- `email` (maps to `r_emailaddress`)
- `w_member_social`

---

### 3. Exchanged Authorization Code for Access Token

Used this command in Git Bash:

```bash
curl -ik -X POST https://www.linkedin.com/oauth/v2/accessToken \
-d grant_type=authorization_code \
-d code=AUTH_CODE_FROM_PREVIOUS_STEP \
-d redirect_uri=https%3A%2F%2Fapi-university.com \
-d client_id=YOUR_CLIENT_ID \
-d client_secret=YOUR_CLIENT_SECRET

