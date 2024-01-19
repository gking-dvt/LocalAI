Echo "@see https://localai.io/models/"
Echo "@see https://github.com/go-skynet/model-gallery"


Echo "`nDownloading gpt-3.5-turbo"
Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '{"id": "model-gallery@gpt-3.5-turbo"}'

Echo "`nDownloading text-embedding-ada-002"
Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '{"id": "model-gallery@text-embedding-ada-002"}'

Echo "`nDownloading thebloke__mistral-7b-instruct-v0.1-gguf__mistral-7b-instruct-v0.1.q4_k_m.gguf"
Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '{"id": "huggingface@thebloke__mistral-7b-instruct-v0.1-gguf__mistral-7b-instruct-v0.1.q4_k_m.gguf"}'

Echo "`nDownloading mistral"
Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '{"id": "model-gallery@mistral"}'
