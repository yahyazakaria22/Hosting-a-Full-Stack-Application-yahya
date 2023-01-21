eb init udagram-api --region us-east-1  --platform node.js
eb create --sample udagram-api-env
eb use udagram-api-env
eb setenv POSTGRES_USERNAME="postgres" POSTGRES_PASSWORD="Yahya1238" POSTGRES_DB="postgres" PORT_DB=5432 PORT=8080 POSTGRES_HOST="database-1.cqnanzcuccgx.us-east-1.rds.amazonaws.com" AWS_REGION="us-east-1" AWS_PROFILE="default" env="" URL="http://udagram-api-env.eba-dq75m83p.us-east-1.elasticbeanstalk.com" JWT_SECRET="yahya"
eb deploy || eb deploy udagram-api-env
