%Uma função do 1º grau (ex: projeção de receita linear).

%Valorização de de um imóvel pode ser repesentado por  uma função V(t)=at+b
%Onde V(t) representa o valor do imóvel no tempo 𝑡
%a é a taxa de valorização do imóvel (variação do valor por unidade de tempo).
%b é o valor inicial do imóvel no tempo 𝑡=0.
%t representa o tempo (anos, meses, etc.).

% Variável tempo
t = 4;

% Taxa de valorização do imóvel (sem separador de milhar)
a = 2000;

% Valor inicial do imóvel
b = 30000;

% Cálculo da valorização
f = (a * t) + b;

% Exibir o resultado
disp("O valor do imóvel após " num2str(t)  " anos será: R$" num2str(f) )

% Gerar os valores para o gráfico
anos = 0:1:t; % Intervalo de anos (0 até t)
valorizacao = (a .* anos) + b; % Valor do imóvel ao longo dos anos

% Plotar o gráfico
figure;
plot(anos, valorizacao, '-o', 'LineWidth', 2, 'MarkerSize', 6);
title('Valorização do Imóvel ao Longo do Tempo');
xlabel('Anos');
ylabel('Valor do Imóvel (R$)');
grid on;




%Uma função do 2º grau (ex: trajetória, lucro ou aceleração).

%Podemos usar uma função de 2º grua para o estudo de  lançamentos 
% Definir coeficientes da equação quadrática F(t) = at^2 + bt + c
a = -0.5;  % Coeficiente quadrático negativo para inverter a parábola
b = 5;     % Coeficiente linear 
c = 30;    % Termo constante aumentado para que a altura seja sempre positiva

% Calcular o vértice da parábola
t_vertice = -b / (2 * a);  % Cálculo do tempo onde ocorre o vértice
y_vertice = (a * (t_vertice^2)) + (b * t_vertice) + c;  % Altura no vértice

% Ajustar intervalo para garantir que o vértice apareça
t_min = max(0, t_vertice - 5);  % Garante que o tempo comece em 0 ou antes do vértice
t_max = t_vertice + 5;           % Garante que o tempo vá além do vértice
t = linspace(t_min, t_max, 100);  % Gera 100 pontos no intervalo adequado

% Calcular os valores de F(t)
y = (a * (t.^2)) + (b * t) + c;

% Plotar o gráfico
figure; 
plot(t, y, 'b', 'LineWidth', 2); % Plota a parábola em azul
grid on;
xlabel('Tempo (t)'); 
ylabel('Altura F(t)'); 
title('Lançamento: Gráfico da Função Quadrática F(t) = -at^2 + bt + c');
hold on;

% Plotar o vértice da parábola
plot(t_vertice, y_vertice, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');  

% Exibir legenda
legend('F(t) = -at^2 + bt + c', 'Vértice (Altura Máxima)');

hold off;


% Uma função exponencial ou logarítmica 

% Podemos usar uma função exponencial para calcular juros compostos 
% Definindo os parâmetros
C = 1000;  % Capital inicial (R$)
i = 0.05;  % Taxa de juros por período (5%)
n = 0:1:10;  % Número de períodos (de 0 a 10 anos)

% Calcular o montante M usando a fórmula M = C * (1 + i)^n
M = C * (1 + i).^n;

% Plotar o gráfico
figure; % Cria uma nova figura
plot(n, M, 'b', 'LineWidth', 2); % Plota o montante ao longo dos períodos
grid on; % Ativa a grade
xlabel('Número de Períodos (n)'); % Rótulo do eixo x
ylabel('Montante (M)'); % Rótulo do eixo y
title('Crescimento com Juros Compostos'); % Título do gráfico


% Definindo a função polinomial rm:562221
function y = P(x)
    y = x.^3 - 2*x.^2 + 3*x + 1; % Polinômio com constante 1
endfunction

% Criando vetor de valores para x
x = -5:0.1:5; % Intervalo de -5 a 5 com passos de 0.1

% Calculando os valores de y
y = P(x);

% Plotando o gráfico
plot(x, y, 'b-', 'LineWidth', 2);
grid on;
title('Função Polinomial P(x) = x^3 - 2x^2 + 3x + 1  (do rm:562221)');
xlabel('x');
ylabel('P(x)');

% Analisando comportamento assintótico
x_extremo = [-10, 10]; % Valores extremos para visualizar assíntotas
y_extremo = P(x_extremo);
disp('Valores em x = -10 e x = 10:');
disp(['P(-10) = ', num2str(y_extremo(1))]);
disp(['P(10) = ', num2str(y_extremo(2))]);


% Definindo a função polinomial rm:565437
function y = P(x)
    y = x.^3 - 2*x.^2 + 3*x + 7; % Polinômio com constante 7
endfunction

% Criando vetor de valores para x
x = -5:0.1:5; % Intervalo de -5 a 5 com passos de 0.1

% Calculando os valores de y
y = P(x);

% Plotando o gráfico
plot(x, y, 'b-', 'LineWidth', 2);
grid on;
title('Função Polinomial P(x) = x^3 - 2x^2 + 3x + 7 (do rm:565437)');
xlabel('x');
ylabel('P(x)');

% Analisando comportamento assintótico
x_extremo = [-10, 10]; % Valores extremos para visualizar assíntotas
y_extremo = P(x_extremo);
disp('Valores em x = -10 e x = 10:');
disp(['P(-10) = ', num2str(y_extremo(1))]);
disp(['P(10) = ', num2str(y_extremo(2))]);


% Definindo a função polinomial numero aleatorio
function y = P(x)
    y = x.^3 - 2*x.^2 + 3*x + 2; % Polinômio com constante 2
endfunction

% Criando vetor de valores para x
x = -5:0.1:5; % Intervalo de -5 a 5 com passos de 0.1

% Calculando os valores de y
y = P(x);

% Plotando o gráfico
plot(x, y, 'b-', 'LineWidth', 2);
grid on;
title('Função Polinomial P(x) = x^3 - 2x^2 + 3x + 2 (aleatorio)');
xlabel('x');
ylabel('P(x)');

% Analisando comportamento assintótico
x_extremo = [-10, 10]; % Valores extremos para visualizar assíntotas
y_extremo = P(x_extremo);
disp('Valores em x = -10 e x = 10:');
disp(['P(-10) = ', num2str(y_extremo(1))]);
disp(['P(10) = ', num2str(y_extremo(2))]);

