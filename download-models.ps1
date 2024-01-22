Echo "@see https://localai.io/models/"
Echo "@see https://github.com/go-skynet/model-gallery"


Echo "`nDownloading mistral-7b-instruct-v0.1.Q4_K_M.gguf (gpt-3.5-turbo)"
Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '
        {
            "url": "github:go-skynet/model-gallery/base.yaml",
            "name": "gpt-3.5-turbo",
            "overrides": {
                "parameters": {
                    "model": "mistral-7b-instruct-v0.1.Q4_K_M.gguf"
                }
            },
            "files": [
                {
                    "filename": "mistral-7b-instruct-v0.1.Q4_K_M.gguf",
                    "sha256": "",
                    "uri": "https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/resolve/main/mistral-7b-instruct-v0.1.Q4_K_M.gguf"
                }
            ]
        }
    '
    
Echo "`nDownloading phi-2.Q8_0.gguf (text-embedding-ada-002)"
Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '
        {
            "url": "github:go-skynet/model-gallery/base.yaml",
            "name": "phi-2",
            "config_file": {
              "parameters": {
                "model": phi-2.Q8_0.gguf,
                "embeddings": true
              }
            }
            "files": [
                {
                    "filename": "phi-2.Q8_0.gguf",
                    "sha256": "",
                    "uri": "https://huggingface.co/TheBloke/phi-2-GGUF/resolve/main/phi-2.Q8_0.gguf"
                }
            ]
        }
    '

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
