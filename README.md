# bibliotec
Recentemente, desenvolvi um banco de dados como parte de um trabalho proposto em sala, no qual foi solicitado a criação de um fluxograma de um sistema, além de detalhar os requisitos de cada função envolvida. Para praticar, escolhi usar o MySQL Workbench para implementar esse projeto.

O sistema que projetei é para uma biblioteca, e inclui as seguintes funcionalidades principais: gestão de usuários, administradores, acervo de livros, reservas de livros e um totem para registro de entrada e saída de estudantes.

Dividi o sistema em tabelas distintas, utilizando o comando CREATE TABLE para criar cada uma das funcionalidades principais. Entre elas, fiz a relação entre a tabela de livros e o acervo de livros usando chaves estrangeiras (FOREIGN KEY), garantindo que as informações ficassem conectadas de forma eficiente. Para adicionar dados iniciais nas tabelas, utilizei o comando INSERT INTO.

Além disso, para simular a interação do banco de dados com uma interface web, utilizei Python com Flask e HTML. Essa simulação permitiu a conexão entre o banco de dados e uma versão web do sistema, demonstrando como os usuários poderiam interagir com o sistema de forma prática.
