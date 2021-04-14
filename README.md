# worthless
Worthless, agora em GO!

## Testing

```
go test ./... -coverprofile=cover.txt
go tool cover -html=cover.txt -o cover.html
```

## "Hierarquia" adotada para projetos em go

Ler: 
* https://github.com/golang-standards/project-layout
* https://travisjeffery.com/b/2019/11/i-ll-take-pkg-over-internal/
* https://www.youtube.com/watch?v=PTE4VJIdHPg
* https://www.youtube.com/watch?v=3gQa1LWwuzk

* /cmd
Um main.go que importa seu programa que está em /pkg (ou /internal).

* /internal
Código que não pode ser importado por ninguém. É possível elocubrar e fazer /internal/worthless e /internal/pkg/worthless.

* /pkg
Código que pode ser importado. Espalhe à vontade.

* /vendor
Dependências gerenciadas por alguém. (Go 1.14 tem -mod=vendor habilitado por padrão)

* /api
Specs OpenAPI/Swagger, Json, definições de protocolos.

* /web
Static web assets, sse templates e SPAs (?)

* /configs
Templates de configuração ou arquivos de configuração padrão.

* /init
Units de systemd e coisas do tipo.

* /scripts
Scripts para plumbing.

* /build, /build/ci
Dockerfile, rpm/deb. CI stuff vai em /build/ci

* /deployments
Kubernetes/helm, mesos, terraform crap.

* /test
Testes adicionais e testdata, embora todo mundo prefere que os arquivos de testes fiquem lado a lado dos códigos fonte. 

* /docs
Godoc (ahaha)

* /tools
Scripts que não são scripts.

* /examples
Exemplos (duh)

* /third_party
Swagger.

* /githooks
Git hooks!

* /assets
Frescuras.

* /website
Website.

## Nunca crie:

* /src
Porque todos odeiam java.

