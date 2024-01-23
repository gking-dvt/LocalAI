Echo "@see https://localai.io/models/"
Echo "@see https://github.com/go-skynet/model-gallery"


Echo "`nDownloading phi-2 (gpt-3.5-turbo)"
Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '
    {
        "name": "gpt-3.5-turbo",
        "files": [
            {
                "filename": "phi-2.Q4_K_M.gguf",
                "sha256": "",
                "uri": "https://huggingface.co/TheBloke/phi-2-GGUF/resolve/main/phi-2.Q4_K_M.gguf"
            }
        ],
        "overrides": {
            "context_size": 2048,
            "f16": true,
            "gpu_layers": 64,
            "parameters": {
                "model": "phi-2.Q4_K_M.gguf",
                "temperature": 0.2,
                "top_k": 40,
                "top_p": 0.95
            }
        },
        "url": "github:go-skynet/model-gallery/base.yaml"
    }
    '
    
Echo "`nDownloading phi-2"
Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '
        {
            "name": "phi-2",
            "files": [
                {
                    "filename": "phi-2.Q4_K_M.gguf",
                    "sha256": "",
                    "uri": "https://huggingface.co/TheBloke/phi-2-GGUF/resolve/main/phi-2.Q4_K_M.gguf"
                }
            ],
            "overrides": {
                "context_size": 2048,
                "f16": true,
                "gpu_layers": 64,
                "parameters": {
                    "model": "phi-2.Q4_K_M.gguf",
                    "temperature": 0.2,
                    "top_k": 40,
                    "top_p": 0.95
                }
            },
            "url": "github:go-skynet/model-gallery/base.yaml"
        }'

Echo "`nDownloading mistral-7b-instruct-v0.1"
Invoke-WebRequest -Uri http://localhost:8080/models/apply `
    -Method POST `
    -ContentType 'application/json; charset=utf-8' `
    -Body '{
        "name": "mistral-7b-instruct-v0.1",
        "files": [
            {
                "filename": "mistral-7b-instruct-v0.1.Q4_K_M.gguf",
                "sha256": "",
                "uri": "https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/resolve/main/mistral-7b-instruct-v0.1.Q4_K_M.gguf"
            }
        ],
        "overrides": {
            "context_size": 4096,
            "f16": true,
            "gpu_layers": 64,
            "parameters": {
                "model": "mistral-7b-instruct-v0.1.Q4_K_M.gguf",
                "temperature": 0.2,
                "top_k": 40,
                "top_p": 0.95
            }
        },
        "url": "github:go-skynet/model-gallery/base.yaml"
    }'

