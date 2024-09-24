# **Imersão Godot: 30 Dias de Aprendizado**

Bem-vindo(a) ao meu projeto de **30 dias** de imersão no **Godot Engine**! Neste repositório, vou compartilhar meu progresso diário, além de descobertas, desafios e projetos criados ao longo dessa jornada de desenvolvimento de jogos.

## **Objetivo**
O objetivo deste projeto é adquirir uma base sólida no Godot, explorando desde os fundamentos até técnicas mais avançadas, com o intuito de dominar o ambiente e estabelecer uma base para futuros projetos de jogos.

## **Estrutura do Repositório**
- [Primeiros passos](#primeiros-passos): Anotações diárias sobre aprendizados, dificuldades e soluções.
- [Projetos](#projetos): Exemplos de código e projetos desenvolvidos ao longo do curso.
- [Recursos](#recursos): Links úteis, tutoriais e materiais que me ajudaram nos estudos.

## **Plano de Estudos**

### **Semana 1: Fundamentos do Godot**
- [x] **Dia 1-2**: Instalação, configuração e familiarização com a interface.
- [x] **Dia 3-4**: Conceitos básicos de cenas e nós.
- [x] **Dia 5-7**: Introdução ao GDScript e criação de um projeto simples.

### **Semana 2: Desenvolvimento 2D**
- [ ] **Dia 8-10**: Física 2D e animação.
- [ ] **Dia 11-12**: Interatividade e entrada de usuário.
- [ ] **Dia 13-14**: Desenvolvimento de um jogo 2D básico.

### **Semana 3: Desenvolvimento 3D**
- [ ] **Dia 15-17**: Fundamentos de 3D, câmeras e iluminação.
- [ ] **Dia 18-19**: Importação de modelos e texturas.
- [ ] **Dia 20-21**: Criação de um projeto 3D simples.

### **Semana 4: Técnicas Avançadas e Publicação**
- [ ] **Dia 22-24**: Otimização e melhorias de desempenho.
- [ ] **Dia 25-26**: Sistemas avançados como partículas e shaders.
- [ ] **Dia 27-28**: Desenvolvimento de um projeto avançado.
- [ ] **Dia 29**: Testes e preparação para publicação.
- [ ] **Dia 30**: Reflexão sobre o aprendizado e planejamento de próximos projetos.

---
## **Anotações** 
#### Semana 1 - Fundamentos

1. #### Node 
É o nó mais básico.  Ele não tem nenhuma funcionalidade específica, mas pode ser usado como um nó pai para organizar outros nós. 
Exemplo de uso : Como base para criar estruturas hierárquicas mais complexas, onde outros nós podem ser adicionados e controlados. 

2. #### Spatial(3D) - Node2D(2D)
Servem como base para nós que lidam com posição, rotação e escala no espaço tridimensional(Spatial) ou bidimensional (Node2D).
Qualquer objeto ou entidade em uma cena 2D ou 3D pode herdar desses nós para ter suas transformações controladas. 

3. #### Area2D e Area(3D)
Permite detectar sobreposição com outras areas ou corpos físicos. É útil para colisões, areas de efeito, ou criar gatilhos. Exemplo de uso: Um sensor que detecta quando o jogador entra em uma zona, ativando um evento no jogo. 

4. #### RigidBody(2D) e RigiBody(3D)
Representa um corpo físico que responde a forças e colisões no mundo. Útil para criar física realista. Exemplo de uso: Um objeto que cai e interage com outros no cenário, como uma caixa em um jogo de plataforma. 

5. #### Sprite (2D)
Exibe uma imagem ou textura. Normalmente usado para representar personagens, objetos ou fundos em jogos 2D. Criar o personagem principal ou um fundo animado em um jogo 2D. 

6. #### KinematicBody2D e KinematicBody(3D)
Diferente do RigidBody, o KinematicBody é controlado pelo usuário e não pela física. Ele ainda pode detectar colisões e usar funções para se mover de maneira mais controlada. Exemplo de uso: Personagens jogáveis, onde você controla o movimento e colisões sem usar a física do motor diretamente. 

7. #### Control 
Base para criar interfaces de usuário (UI). Herdando desse nó, você pode criar botões, painéis, barras de progresso.Criar menus de jogo, HUD( interface que exibe informações como a vida do jogador).

8. #### AnimationPlayer 
Controla animações em uma cena. Permite animar propriedades dos nós, como posição, rotação, escala e até parâmetros customizados. Criar animações de personagens, movimentação de objetos, ou transições suaves entre estados no jogo. 

9. #### Camera2D e Camera3D
Representa a câmera que exibe a visão da cena. Pode ser usada para seguir o jogador ou exibir específicas do cenário. Criar uma câmera que segue o personagem principal conforma ele se move pelo cenário. 

10. #### TileMap 
Gerencia mapas de blocos (tiles) para criar cenários baseados em grid. Cada bloco pode ter uma imagem e propriedades de colisão. Criar os cenários de jogos de plataforma 2D como fases com pisos e paredes que o personagem pode interagir. 

11. #### CollisionShape2D 
Define a forma de colisão de um objeto. Ele é usado em conjunto com nós de física, como KinematicBody2D ou Area2D, para detectar colisões. Definir a area de colisão de um personagem ou de um obstáculo em um jogo de plataforma. 

12. #### CollisionPolygon2D
Parecido com o CollisionShape2D, mas permite que você defina a area de colisão como um polígono personalizado, dando mais flexibilidade. Criar colisões para objetos com formas mais irregulares, como terrenos ou plataformas com bordas não retas. 

13. #### RayCast2D 
Lança um raio invisivel que detecta objetos que interceptam sua trajetória. Usado para detectar colisões em linha reta. Usar para checar se há um obstáculo a frente do personagem ou para simular  uma linha de visão.

14. #### AnimatedSprite (2D)

Exibe uma animação de sprites, trocando entre diferentes quadros de uma imagem em sequência para criar movimento. Animações de movimento de personagem.


15. #### ParallaxBackground 
Cria um fundo com efeito de paralaxe, onde diferentes camadas se movem a diferentes velocidades para criar uma sensação de profundidade. Usar em jogos 2D de plataforma ou side-scrollers para dar um visual mais dinâmico ao fundo do jogo. 

16. #### NinePatchRect 
Exibe uma imagem escalável sem distorcer as bordas. Útil para interfaces que precisam ser ajustadas em tamanho sem perder a qualidade visual. Criar janelas diálogo, caixas de texto, botões que se ajustam dinamicamente ao conteúdo sem perder o formato original. 


17. #### Path2D 
Define um caminho no espaço 2D. Pode ser usado em conjunto com o nó PathFollow2D para mover objetos ao longo de uma trajetória. Criar o trajeto de um inimigo que segue um caminho específico ou mover um objeto em um padrão repetitivo.

18.  #### Timer 
Gera eventos em intervalos de tempo. Permite contar tempo edisparar funções após um período. Criar delays entre ações, controlar o tempo de respawn de inimigos ou criar eventos repetitivos no jogo. 

19. #### PathFollow2D
Segue um caminho definido pelo nó Path2D. Controla o movimento de objetos ao longo de uma trajetória, permitindo ajustar a velocidade e a direção. Fazer com que um personagem ou inimigo siga um caminho predefinido, como plataformas móveis ou inimigos voadores. 


20. #### Particles2D
Gera e controla sistemas de partículas 2D. Pode ser usado para criar efeitos visuais como fumaça, explosões, fogo ou neve. 
Criar efeitos visuais, como chamas, explosões, faíscas, ou efeitos de magia, para dar mais dinamismo ao visual do jogo

---
## **Recursos**



---
## **Como Contribuir**
Contribuições são bem-vindas! Se tiver sugestões de melhoria ou quiser compartilhar novos recursos, fique à vontade para abrir uma issue ou enviar um pull request.

## **Contato**
Para dúvidas, sugestões ou discussões, entre em contato por e-mail em [nayaranunes.dev@gmail.com](mailto:nayaranunes.dev@gmail.com) ou através das issues deste repositório.

**Acompanhe meu progresso** e vamos aprender juntos!
