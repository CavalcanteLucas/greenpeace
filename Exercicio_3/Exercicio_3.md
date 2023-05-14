# Exercício 3

## Questão 1
Cada analista da equipe de Inteligência de Dados tem um perfil próprio e temos uma conta genérica para conseguir lidar com bases de dados coletivas. No cenário em que o usuário **gp_user** gostaria de ter acesso para a tabela **press_data**, qual seria o código para disponibilizá-la?

> Para conceder acesso irrestrito ao usuário **gp_user** para a tabela **press_data**, basta executar o seguinte código:

> ```sql
GRANT ALL PRIVILEGES ON TABLE press_data TO gp_user;
```

> **Reference**: [[GRANT](https://docs.aws.amazon.com/pt_br/redshift/latest/dg/r_GRANT.html)]

## Questão 2
Em algumas vezes, mesmo após dar permissão uma vez, a tabela é reescrita com o parâmetro **drop** e perde as permissões. Qual o código que deve ser feito para que a tabela sempre herde os privilégios de forma padrão?

> Para que a tabela sempre herde os privilégios de forma padrão, basta executar o seguinte código:

> ```sql
ALTER DEFAULT PRIVILEGES IN SCHEMA <schema_name> GRANT ALL ON TABLES TO gp_user;
```

> **Reference**: [[ALTER DEFAULT PRIVILEGES](https://docs.aws.amazon.com/pt_br/redshift/latest/dg/r_ALTER_DEFAULT_PRIVILEGES.html)]


## Questão 3
Em um cenário que alguém não é mais responsável por uma tabela específica, qual o código para mudar a pessoa proprietária dessa tabela?

> Para mudar a pessoa proprietária de uma tabela, basta executar o seguinte código:

> ```sql
ALTER TABLE <table_name> OWNER TO <new_owner>;
```

> **Reference**: [[ALTER TABLE](https://docs.aws.amazon.com/pt_br/redshift/latest/dg/r_ALTER_TABLE.html)]
