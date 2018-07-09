echo "showing who is this" \
&& who \
&& docker build -t nginx:v_$BUILD_NUMBER --pull=true /var/lib/jenkins/workspace/ecs-nginx \
&& docker tag nginx:v_$BUILD_NUMBER 079385551353.dkr.ecr.us-east-2.amazonaws.com/nginx:v_$BUILD_NUMBER \
&& docker push 079385551353.dkr.ecr.us-east-2.amazonaws.com/nginx:v_$BUILD_NUMBER