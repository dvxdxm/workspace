export POSTGRES_PASSWORD=$(kubectl get secret --namespace default db-service -o jsonpath="{.data.postgres-password}" | base64 -d)

echo 'run config db ...'
export DB_USERNAME=coworking
export DB_PASSWORD=${POSTGRES_PASSWORD}
export DB_HOST=127.0.0.1
export DB_PORT=5433
export DB_NAME=coworking

echo 'run app python ...'
python3 app.py