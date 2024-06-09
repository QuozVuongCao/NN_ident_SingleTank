% Tap mau du lieu de huan luyen mang NN
K= length(u);
X = [u(1:K-1)'; y(1:K-1)'];
D = [y(2:K)'];

% Khai bao mang NN va huan luyen
N = 15;
mynet = newff(X,D,N,{'logsig' 'purelin'});
mynet = train(mynet,X,D);

% tao khoi Simulink thuc hien mang NN vua huan luyen
gensim(mynet); 