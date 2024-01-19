echo "Testing Embeddings"
Invoke-WebRequest -Uri http://localhost:8080/v1/embeddings `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '
      {
        "input": "Test",
        "model": "text-embedding-ada-002"
      }'

echo "Testing Chat Completions"
$r = Invoke-WebRequest -Uri http://localhost:8080/v1/chat/completions `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '
      {
        "model": "gpt-3.5-turbo",
        "messages": [{"role": "user", "content": "How are you?"}],
        "temperature": 0.1
      }'

echo $r.RawContent