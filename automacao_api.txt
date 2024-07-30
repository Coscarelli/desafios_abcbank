
*** POST ***
Library  RequestsLibrary


${URL}  https://reqres.in/api/users


Cadastrar usuário
  Dado que estou na página de cadastro de usuário
  Quando eu envio um request de cadastro de usuário
  Então o usuário deve ser criado com sucesso


Dado que estou na página de cadastro de usuário
  Create Session  reqres  ${URL}

Quando eu envio um request de cadastro de usuário
  ${headers}  Create Dictionary  Content-Type=application/json
  ${data}  Create Dictionary  name=John Doe  job=QA
  Post Request  reqres  /users  headers=${headers}  data=${data}

Então o usuário deve ser criado com sucesso
  ${response}  Get Response
  Should Be Equal  ${response.status_code}  201
  ${json}  To Json  ${response.content}
  Should Not Be Empty  ${json['id']}
  Should Not Be Empty  ${json['createdAt']}
  
  
*** GET ***
Library  RequestsLibrary


${URL}  https://reqres.in/api/users


Consultar usuário criado
  Dado que estou na página de consulta de usuário
  Quando eu envio um request de consulta de usuário
  Então o usuário deve ser retornado com sucesso


Dado que estou na página de consulta de usuário
  Create Session  reqres  ${URL}

Quando eu envio um request de consulta de usuário
  ${headers}  Create Dictionary  Content-Type=application/json
  Get Request  reqres  /users/${id}  headers=${headers}

Então o usuário deve ser retornado com sucesso
  ${response}  Get Response
  Should Be Equal  ${response.status_code}  200
  ${json}  To Json  ${response.content}
  Should Not Be Empty  ${json['id']}
  Should Not Be Empty  ${json['name']}
  Should Not Be Empty  ${json['job']}
  

*** PUT ***
Library  RequestsLibrary


${URL}  https://reqres.in/api/users


Atualizar usuário criado
  Dado que estou na página de atualização de usuário
  Quando eu envio um request de atualização de usuário
  Então o usuário deve ser atualizado com sucesso


Dado que estou na página de atualização de usuário
  Create Session  reqres  ${URL}

Quando eu envio um request de atualização de usuário
  ${headers}  Create Dictionary  Content-Type=application/json
  ${data}  Create Dictionary  name=Jane Doe  job=Dev
  Put Request  reqres  /users/${id}  headers=${headers}  data=${data}

Então o usuário deve ser atualizado com sucesso
  ${response}  Get Response
  Should Be Equal  ${response.status_code}  200
  ${json}  To Json  ${response.content}
  Should Not Be Empty  ${json['id']}
  Should Not Be Empty  ${json['name']}
  Should Not Be Empty  ${json['job']}
  
  


*** DELETE ***
Library  RequestsLibrary


${URL}  https://reqres.in/api/users


Deletar usuário criado
  Dado que estou na página de exclusão de usuário
  Quando eu envio um request de exclusão de usuário
  Então o usuário deve ser excluído com sucesso


Dado que estou na página de exclusão de usuário
  Create Session  reqres  ${URL}

Quando eu envio um request de exclusão de usuário
  ${headers}  Create Dictionary  Content-Type=application/json
  Delete Request  reqres  /users/${id}  headers=${headers}

Então o usuário deve ser excluído com sucesso
  ${response}  Get Response
  Should Be Equal  ${response.status_code}  204
  
