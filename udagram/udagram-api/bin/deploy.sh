eb init udagram-api --region us-east-1  --platform node.js
eb create --sample udagram-api-env
eb use udagram-api-env
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB PORT_DB=$PORT_DB PORT=$PORT POSTGRES_HOST=$POSTGRES_HOST AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE env=$env URL=$URL JWT_SECRET=$JWT_SECRET
eb deploy || eb deploy udagram-api-env
