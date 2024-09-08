aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 350111553064.dkr.ecr.us-east-1.amazonaws.com

docker build -t udacity/coworking .

docker tag udacity/coworking:latest 350111553064.dkr.ecr.us-east-1.amazonaws.com/udacity/coworking:latest

docker push 350111553064.dkr.ecr.us-east-1.amazonaws.com/udacity/coworking:latest