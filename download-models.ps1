Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '{"id": "model-gallery@gpt-3.5-turbo"}'

Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '{"id": "model-gallery@text-embedding-ada-002"}'

Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '{"id": "model-gallery@mistral"}'
