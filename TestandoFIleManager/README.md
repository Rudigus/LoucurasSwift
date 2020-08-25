# Testando o FileManager

O objetivo do projeto é salvar um objeto da classe [CelestialBody](x-source-tag://CelestialBody) no JSON e carregá-lo de lá. O salvamento e o carregamento se encontram na classe [Database](x-source-tag://Database).

Nesse contexto, usamos o [`FileManager`](https://developer.apple.com/documentation/foundation/filemanager) para obter a URL do arquivo a ser salvo e carregado e para saber se o arquivo já existe.
